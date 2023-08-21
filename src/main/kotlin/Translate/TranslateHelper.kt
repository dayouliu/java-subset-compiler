import Translate.removeNonAlphanumericCharacters
import tir.ir.ast.*
import kotlin.random.Random

fun generateRandomString(): String {
    val chars = ('a'..'z') + ('A'..'Z')
    return (1..10)
        .map { Random.nextInt(0, chars.size) }
        .map(chars::get)
        .joinToString("")
}

fun getMethodName(classKey: Pair<String, String>, methodKey: String): String {
    return removeNonAlphanumericCharacters("${classKey.first}_${classKey.second}_$methodKey")
}

fun getFieldName(classKey: Pair<String, String>, fieldKey: String): String {
    return removeNonAlphanumericCharacters("${classKey.first}_${classKey.second}_$fieldKey")
}

fun getCDVName(fullyQualifiedName: String): String {
    return removeNonAlphanumericCharacters("CDV_$fullyQualifiedName")
}

fun getIDTName(fullyQualifiedName: String): String {
    return removeNonAlphanumericCharacters("IDT_$fullyQualifiedName")
}

fun stringToPairKey(s: String): Pair<String, String> {
    // a.b.c.d -> (a.b.c, d)
    val split = s.split(".")
    val pkgName = split.dropLast(1).joinToString(".")
    val className = split.last()
    return Pair(pkgName, className)
}

fun initializeInheritanceMatrix(classInheritanceGraph: HashMap<Pair<String, String>, ArrayList<Pair<String, String>>>): List<List<Boolean>> {
    val inheritanceMatrix = mutableListOf<List<Boolean>>()
    // i is the child class, j is the parent class
    for (i in 0 until classIDGenerator) {
        val row = mutableListOf<Boolean>()
        for (j in 0 until  classIDGenerator) {
            val childClass = classIDToClassName[i]!!
            val parentClass = classIDToClassName[j]!!
            row.add(TypeCheckVisitor.inheritsFrom(stringToPairKey(childClass), stringToPairKey(parentClass), classInheritanceGraph))
        }
        inheritanceMatrix.add(row)
    }
    return inheritanceMatrix
}

fun convertToString(n: Expr, resultName: String): List<Stmt> {
    val value = generateRandomString()
    val cdvAddr = generateRandomString()
    val methodOffset = classesMetadata["java.lang.Object"]!!.methodOffsets["toString_"]!!
    val callToStringOnObjectStmts : List<Stmt> = if (n.type!!.type.getFullyQualifiedName() != stringType) {listOf(
        Move(
            Temp(cdvAddr),
            Mem(Temp(value))
        ),
        Move(Temp(resultName), Call(
            Mem(
                BinOp(
                    BinOp.OpType.ADD,
                    Temp(cdvAddr),
                    Const(methodOffset)
                )
            ),
            listOf(Temp(value), Const(0))
        ))
    )} else {
        listOf(
            Move(Temp(resultName), Temp(value))
        )
    }
    if (listOf("INT", "BYTE", "SHORT", "BOOLEAN", "CHAR").contains(n.type!!.type.getFullyQualifiedName())) {
        val convertToObjectStmts: List<Stmt> = when (n.type!!.type.getFullyQualifiedName()) {
            "INT", "BYTE", "SHORT" -> {
                val newObjectExpr = NewObjectExpr(CompoundVariableType.fromFullyQualifiedName("java.lang.Integer"), listOf(n))
                newObjectExpr.methodSignatureKey = "Integer_INT"
                listOf(Move(Temp(value), translateExpr(newObjectExpr)))
            }
            "BOOLEAN" -> {
                val newObjectExpr = NewObjectExpr(CompoundVariableType.fromFullyQualifiedName("java.lang.Boolean"), listOf(n))
                newObjectExpr.methodSignatureKey = "Boolean_BOOLEAN"
                listOf(Move(Temp(value), translateExpr(newObjectExpr)))
            }
            "CHAR"  -> {
                val newObjectExpr = NewObjectExpr(CompoundVariableType.fromFullyQualifiedName("java.lang.Character"), listOf(n))
                newObjectExpr.methodSignatureKey = "Character_CHAR"
                listOf(Move(Temp(value), translateExpr(newObjectExpr)))
            }
            else -> listOf(Move(Temp(value), translateExpr(n)))
        }
        return convertToObjectStmts + callToStringOnObjectStmts
    } else {
        val isNullLabel = generateRandomString()
        val notNullLabel = generateRandomString()
        val endLabel = generateRandomString()
        return listOf(
            Move(Temp(value), translateExpr(n)),
            CJump(
                BinOp(
                    BinOp.OpType.EQ,
                    Temp(value),
                    Const(0)
                ),
                isNullLabel,
                notNullLabel
            ),
            Label(isNullLabel),
            Move(Temp(resultName), translateExpr(StringLiteral("null"))),
            Jump(Name(endLabel)),
            Label(notNullLabel),
        ) + callToStringOnObjectStmts + listOf(Label(endLabel))
    }
}

fun foldConstants(n: Expr): Expr {
    val constantEval = evalConstExprCond(n)
    return if (constantEval != null) {
        when (n.type!!.type.getFullyQualifiedName()) {
            "BOOLEAN" -> BoolLiteral(constantEval.boolEval())
            "INT" -> IntLiteral(constantEval.intEval().toString())
            else -> n
        }
    } else {
        n
    }
}

fun isConstant(n: Expr): Boolean {
    return when (n) {
        is IntLiteral -> true
        is BoolLiteral -> true
        is CharLiteral -> true
        is UnaryExpr -> {
            return isConstant(n.expr)
        }
        is BinaryExpr -> {
            return isConstant(n.left) && isConstant(n.right)
        }
        else -> false
    }
}

enum class SimpleType {
    NUM, STRING
}

class SimpleEval(
    val type: SimpleType,
    val value: Long?,
    val valueStr: String?
) {
    fun boolEval(): Boolean {
        if (value == null) throw Exception("$valueStr cannot evaluate as a boolean")
        return value!! == 1L
    }

    fun intEval(): Int {
        if (value == null) throw Exception("$valueStr cannot evaluate as an int")
        return value.toInt()
    }
}

fun evalConstExprCond(e: Expr?): SimpleEval? {
    when(e) {
        null -> {
            return null
        }
        is IntLiteral -> {
            return SimpleEval(SimpleType.NUM, e.value.toLong(), null)
        }
        is BoolLiteral -> {
            return SimpleEval(SimpleType.NUM, if (e.b) 1 else 0, null)
        }
        is CharLiteral -> {
            return SimpleEval(SimpleType.NUM, e.c.code.toLong(), null)
        }
        is StringLiteral -> {
            return SimpleEval(SimpleType.NUM, null, e.s)
        }
        is UnaryExpr -> {
            val a = evalConstExprCond(e.expr) ?: return null
            when (e.unaryOperator) {
                UnaryOperator.MINUS -> {
                    return SimpleEval(SimpleType.NUM, -a.value!!, null)
                }
                UnaryOperator.NOT -> {
                    return SimpleEval(SimpleType.NUM, if (a.value!! == 0L) 1 else 0, null)
                }
            }
        }
        is BinaryExpr -> {
            val a = evalConstExprCond(e.left) ?: return null
            val b = evalConstExprCond(e.right) ?: return null
            when(e.op) {
                ArithmeticOperator.PLUS -> {
                    if (a.type == SimpleType.NUM && b.type == SimpleType.NUM) {
                        return SimpleEval(SimpleType.NUM, a.value!! + b.value!!, null)
                    } else if (a.type == SimpleType.STRING && b.type == SimpleType.STRING) {
                        return SimpleEval(SimpleType.STRING, null, a.valueStr!! + b.valueStr!!)
                    }
                }
                ArithmeticOperator.MINUS -> {
                    if (a.type == SimpleType.NUM && b.type == SimpleType.NUM) {
                        return SimpleEval(SimpleType.NUM, a.value!! - b.value!!, null)
                    }
                }
                ArithmeticOperator.STAR -> {
                    if (a.type == SimpleType.NUM && b.type == SimpleType.NUM) {
                        return SimpleEval(SimpleType.NUM, a.value!! * b.value!!, null)
                    }
                }
                ArithmeticOperator.DIVIDE -> {
                    if (a.type == SimpleType.NUM && b.type == SimpleType.NUM) {
                        return SimpleEval(SimpleType.NUM, a.value!! / b.value!!, null)
                    }
                }
                ArithmeticOperator.MODULO -> {
                    if (a.type == SimpleType.NUM && b.type == SimpleType.NUM) {
                        return SimpleEval(SimpleType.NUM, a.value!! % b.value!!, null)
                    }
                }
                ArithmeticOperator.AND -> {
                    if (a.type == SimpleType.NUM && b.type == SimpleType.NUM) {
                        return SimpleEval(SimpleType.NUM, if (a.value!! != 0L && b.value!! != 0L) 1 else 0, null)
                    }
                }
                ArithmeticOperator.OR -> {
                    if (a.type == SimpleType.NUM && b.type == SimpleType.NUM) {
                        return SimpleEval(SimpleType.NUM, if (a.value!! != 0L || b.value!! != 0L) 1 else 0, null)
                    }
                }
                ArithmeticOperator.LESS_THAN -> {
                    if (a.type == SimpleType.NUM && b.type == SimpleType.NUM) {
                        return SimpleEval(SimpleType.NUM, if (a.value!! < b.value!!) 1 else 0, null)
                    }
                }
                ArithmeticOperator.GREATER_THAN -> {
                    if (a.type == SimpleType.NUM && b.type == SimpleType.NUM) {
                        return SimpleEval(SimpleType.NUM, if (a.value!! > b.value!!) 1 else 0, null)
                    }
                }
                ArithmeticOperator.LESS_THAN_OR_EQUAL -> {
                    if (a.type == SimpleType.NUM && b.type == SimpleType.NUM) {
                        return SimpleEval(SimpleType.NUM, if (a.value!! <= b.value!!) 1 else 0, null)
                    }
                }
                ArithmeticOperator.GREATER_THAN_OR_EQUAL -> {
                    if (a.type == SimpleType.NUM && b.type == SimpleType.NUM) {
                        return SimpleEval(SimpleType.NUM, if (a.value!! >= b.value!!) 1 else 0, null)
                    }
                }
                ArithmeticOperator.DOUBLE_EQUALS -> {
                    if (a.type == SimpleType.NUM && b.type == SimpleType.NUM) {
                        return SimpleEval(SimpleType.NUM, if (a.value!! == b.value!!) 1 else 0, null)
                    }
                }
                ArithmeticOperator.NOT_EQUAL -> {
                    if (a.type == SimpleType.NUM && b.type == SimpleType.NUM) {
                        return SimpleEval(SimpleType.NUM, if (a.value!! != b.value!!) 1 else 0, null)
                    }
                }
            }
        }
        is ParenWrappedExpr -> {
            return evalConstExprCond(e.expr)
        }
        else -> {}
    }
    return null
}