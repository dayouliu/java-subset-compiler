import tir.ir.ast.*

var constantFolding = false

fun translateExpr(n: Expr): tir.ir.ast.Expr {
    when (n) {
        is IntLiteral -> {
            return Const(n.value.toInt())
        }
        is BoolLiteral -> {
            return Const(if (n.b) 1 else 0)
        }
        is StringLiteral -> {
            /*
            "abc"
            // becomes
            char[] temp = new char[3];
            temp[0] = "a";
            temp[1] = "b";
            temp[2] = "c";
            new String(temp);
             */
            val tempName = generateRandomString()
            val newCharArrayASTNodes = VariableAssignment(
                VariableAccess(tempName),
                NewArrayExpr(
                    PrimitiveType(Primitive.CHAR),
                    null,
                    IntLiteral(n.s.length.toString())
                )
            )
            val charAssignmentASTNodes = n.s.mapIndexed{
                index, char ->
                VariableAssignment(
                    ArrayAccess(
                        VariableAccess(tempName),
                        IntLiteral(index.toString())
                    ),
                    IntLiteral(char.code.toString())
                )
            }
            val newStringASTNode = NewObjectExpr(
                CompoundVariableType.fromFullyQualifiedName("java.lang.String"),
                listOf(VariableAccess(tempName))
            )
            newStringASTNode.methodSignatureKey = "String_CHAR[]"
            return ESeq(
                Seq(
                    listOf(
                        Exp(translateExpr(newCharArrayASTNodes)),
                        *charAssignmentASTNodes.map { Exp(translateExpr(it)) }.toTypedArray(),
                    )
                ),
                translateExpr(newStringASTNode)
            )
        }
        is NullLiteral -> {
            return Const(0)
        }
        is CharLiteral -> {
            return Const(n.c.code)
        }
        is This -> {
            return Temp("this")
        }
        is VariableAccess -> {
            return if (n.isField) {
                val metadata = classesMetadata[n.curClass]!!
                Mem(
                    BinOp(
                        BinOp.OpType.ADD,
                        Temp("this"),
                        Const(metadata.fieldOffsets[n.variableName]!!)
                    )
                )
            } else {
                Temp(n.variableName)
            }
        }
        is ParenWrappedExpr -> {
            return translateExpr(n.expr)
        }
        is BinaryExpr -> {
            if (constantFolding && isConstant(n)) {
                try {
                    return translateExpr(foldConstants(n))
                } catch (e: Exception) {
                    // expression cannot be folded
                }
            }
            val binOpExprTIR =  when (n.op) {
                ArithmeticOperator.PLUS -> {
                    if (n.left.type!!.type.getFullyQualifiedName() == stringType || n.right.type!!.type.getFullyQualifiedName() == stringType) {
                        val leftValue = generateRandomString()
                        val rightValue = generateRandomString()
                        ESeq(
                            Seq(
                                convertToString(n.left, leftValue) + convertToString(n.right, rightValue)
                            ),
                            Call(
                                Name(getMethodName(Pair("java.lang", "String"), "concat_java.lang.String")),
                                listOf(
                                    Temp(leftValue),
                                    Const(0),
                                    Temp(rightValue),
                                )
                            )
                        )
                    }
                    else {
                        BinOp(BinOp.OpType.ADD, translateExpr(n.left), translateExpr(n.right))
                    }
                }
                ArithmeticOperator.MINUS -> {
                    BinOp(BinOp.OpType.SUB, translateExpr(n.left), translateExpr(n.right))
                }
                ArithmeticOperator.STAR -> {
                    BinOp(BinOp.OpType.MUL, translateExpr(n.left), translateExpr(n.right))
                }
                ArithmeticOperator.DIVIDE -> {
                    BinOp(BinOp.OpType.DIV, translateExpr(n.left), translateExpr(n.right))
                }
                ArithmeticOperator.MODULO -> {
                    BinOp(BinOp.OpType.MOD, translateExpr(n.left), translateExpr(n.right))
                }
                ArithmeticOperator.AND -> {
                    val newTrueLabel = generateRandomString()
                    val newFalseLabel = generateRandomString()
                    val newVarName = generateRandomString()
                    ESeq(
                        Seq(
                            listOf(
                                Move(
                                    Temp(newVarName),
                                    Const(0)
                                ),
                                translateCond(n.left, newTrueLabel, newFalseLabel),
                                Label(newTrueLabel),
                                Move(Temp(newVarName), translateExpr(n.right)),
                                Label(newFalseLabel),
                            )
                        ),
                        Temp(newVarName)
                    )
                }
                ArithmeticOperator.OR -> {
                    val newTrueLabel = generateRandomString()
                    val newFalseLabel = generateRandomString()
                    val newVarName = generateRandomString()
                    ESeq(
                        Seq(
                            listOf(
                                Move(
                                    Temp(newVarName),
                                    Const(1)
                                ),
                                translateCond(n.left, newTrueLabel, newFalseLabel),
                                Label(newFalseLabel),
                                Move(Temp(newVarName), translateExpr(n.right)),
                                Label(newTrueLabel),
                            )
                        ),
                        Temp(newVarName)
                    )
                }
                ArithmeticOperator.DOUBLE_EQUALS -> {
                    // TODO: what is double equals for objects and arrays? Or is it always int?
                    BinOp(BinOp.OpType.EQ, translateExpr(n.left), translateExpr(n.right))
                }
                ArithmeticOperator.LESS_THAN -> {
                    BinOp(BinOp.OpType.LT, translateExpr(n.left), translateExpr(n.right))
                }
                ArithmeticOperator.LESS_THAN_OR_EQUAL -> {
                    BinOp(BinOp.OpType.LEQ, translateExpr(n.left), translateExpr(n.right))
                }
                ArithmeticOperator.GREATER_THAN -> {
                    BinOp(BinOp.OpType.GT, translateExpr(n.left), translateExpr(n.right))
                }
                ArithmeticOperator.GREATER_THAN_OR_EQUAL -> {
                    BinOp(BinOp.OpType.GEQ, translateExpr(n.left), translateExpr(n.right))
                }
                ArithmeticOperator.NOT_EQUAL -> {
                    BinOp(BinOp.OpType.NEQ, translateExpr(n.left), translateExpr(n.right))
                }
            }
            if (n.op in listOf(ArithmeticOperator.PLUS, ArithmeticOperator.MINUS, ArithmeticOperator.STAR, ArithmeticOperator.DIVIDE, ArithmeticOperator.MODULO)) {
                val newVarName = generateRandomString()
                if (isEqualToPrimitive(n.left.type!!.type, Primitive.BYTE)) {
                    return ESeq(
                        Seq(listOf(
                            Move(Temp(newVarName), binOpExprTIR),
                            Move(Temp(newVarName), BinOp(BinOp.OpType.AND, Temp(newVarName), Const(0xFF)))
                        )),
                        Temp(newVarName)
                    )
                } else if(isEqualToPrimitive(n.left.type!!.type, Primitive.SHORT)) {
                    return ESeq(
                        Seq(listOf(
                            Move(Temp(newVarName), binOpExprTIR),
                            Move(Temp(newVarName), BinOp(BinOp.OpType.AND, Temp(newVarName), Const(0xFFFF)))
                        )),
                        Temp(newVarName)
                    )
                } else if(isEqualToPrimitive(n.left.type!!.type, Primitive.CHAR)) {
                    return ESeq(
                        Seq(listOf(
                            Move(Temp(newVarName), binOpExprTIR),
                            Move(Temp(newVarName), BinOp(BinOp.OpType.AND, Temp(newVarName), Const(0xFFFF)))
                        )),
                        Temp(newVarName)
                    )
                } else {
                    return binOpExprTIR
                }
            } else {
                return binOpExprTIR
            }
        }
        is UnaryExpr -> {
            if (isConstant(n)) {
                try {
                    return translateExpr(foldConstants(n))
                } catch (e: Exception) {
                    // expression cannot be folded
                }
            }
            return when (n.unaryOperator) {
                UnaryOperator.MINUS -> {
                    BinOp(BinOp.OpType.SUB, Const(0), translateExpr(n.expr))
                }
                UnaryOperator.NOT -> {
                    val newTrueLabel = generateRandomString()
                    val newFalseLabel = generateRandomString()
                    val newVarName = generateRandomString()
                    ESeq(
                        Seq(
                            listOf(
                                Move(
                                    Temp(newVarName),
                                    Const(0)
                                ),
                                translateCond(n.expr, newFalseLabel, newTrueLabel),
                                Label(newTrueLabel),
                                Move(Temp(newVarName), Const(1)),
                                Label(newFalseLabel),
                            )
                        ),
                        Temp(newVarName)
                    )
                }
            }
        }
        is FieldAccess -> {
            val objectType = n.objectExpr.type!!.type
            if (objectType is ArrayType && n.fieldName == "length") {
                val newErrorLabel = generateRandomString()
                val newNonNullLabel = generateRandomString()
                val newArrayPointerName = generateRandomString()
                return ESeq(
                    Seq(listOf(
                        // null check
                        Move(Temp(newArrayPointerName), translateExpr(n.objectExpr)),
                        CJump(
                            BinOp(
                                BinOp.OpType.EQ,
                                Temp(newArrayPointerName),
                                Const(0)
                            ), newErrorLabel, newNonNullLabel
                        ),
                        Label(newNonNullLabel),
                        // return length
                        Move(
                            Temp(newArrayPointerName),
                            Mem(
                                BinOp(
                                    BinOp.OpType.SUB,
                                    Temp(newArrayPointerName),
                                    Const(4)
                                )
                            )
                        ),
                        Label(newErrorLabel),
                    )),
                    Temp(newArrayPointerName)
                )
            } else if (objectType is CompoundVariableType) {
                val metadata = classesMetadata[objectType.getFullyQualifiedName()]!!
                if (!metadata.fields.containsKey(n.fieldName)) {
                    return GlobalVar(getFieldName(PkgURI.fullyQualifiedNameToClassKey(objectType.getFullyQualifiedName()), n.fieldName))
                } else {
                    val objectAddr = generateRandomString()
                    return ESeq(
                        Move(
                            Temp(objectAddr),
                            translateExpr(n.objectExpr)
                        ),
                        Mem(
                            BinOp(
                                BinOp.OpType.ADD,
                                Temp(objectAddr),
                                Const(metadata.fieldOffsets[n.fieldName]!!)
                            )
                        )
                    )
                }
            }
        }
        is MethodCall -> {
            if (n.method!!.modifier_list.contains(Modifier.STATIC)) {
                val methodName = if (n.methodName == "nativeWrite") {
                    "NATIVEjava.io.OutputStream.nativeWrite"
                } else {
                    getMethodName(n.objectExprPairKey!!, n.method!!.getMethodSignatureKey())
                }
                return Call(
                    Name(methodName),
                    n.argsList.map { translateExpr(it) }
                )

            } else {
                val objectAddr = generateRandomString()
                val cdvAddr = generateRandomString()
                val leftType = n.objectExpr.type!!.type as CompoundVariableType
                return if (classesMetadata.containsKey(leftType.getFullyQualifiedName())) {
                    val metadata = classesMetadata[leftType.getFullyQualifiedName()]!!
                    val methodOffset = metadata.methodOffsets[n.method!!.getMethodSignatureKey()]!!
                    ESeq(
                        Seq(
                            listOf(
                                Move(
                                    Temp(objectAddr),
                                    translateExpr(n.objectExpr)
                                ),
                                Move(
                                    Temp(cdvAddr),
                                    Mem(Temp(objectAddr))
                                )
                            )
                        ),
                        Call(
                            Mem(
                                BinOp(
                                    BinOp.OpType.ADD,
                                    Temp(cdvAddr),
                                    Const(methodOffset)
                                )
                            ),
                            listOf(Temp(objectAddr), Const(0)) + n.argsList.map { translateExpr(it) }
                        )
                    )
                } else {
                    val hash = hashMethod(n.method!!.getMethodSignatureKey())
                    val methodID = methodIDs[n.method!!.getMethodSignatureKey()]!!
                    val idtAddr = generateRandomString()
                    val methodOffset = generateRandomString()
                    ESeq(
                        Seq(
                            listOf(
                                Move(
                                    Temp(objectAddr),
                                    translateExpr(n.objectExpr)
                                ),
                                Move(
                                    Temp(cdvAddr),
                                    Mem(Temp(objectAddr))
                                ),
                                Move(
                                    Temp(idtAddr),
                                    Mem(Temp(cdvAddr))
                                ),
                                Move(
                                    Temp(methodOffset),
                                    BinOp(
                                        BinOp.OpType.AND,
                                        Const(hash),
                                        Mem(Temp(idtAddr))
                                    )
                                )
                            )
                        ),
                        Call(
                            Mem(
                                BinOp(
                                    BinOp.OpType.ADD,
                                    Temp(idtAddr),
                                    BinOp(
                                        BinOp.OpType.ADD,
                                        BinOp(
                                            BinOp.OpType.MUL,
                                            Const(4),
                                            Temp(methodOffset)
                                        ),
                                        Const(4)
                                    )
                                )
                            ),
                            listOf(Temp(objectAddr), Const(methodID)) + n.argsList.map { translateExpr(it) }
                        )
                    )
                }
            }
        }
        is PrimitiveCastExpr -> {
            when (n.primitiveType) {
                Primitive.INT -> {
                    return translateExpr(n.expr)
                }
                Primitive.BYTE -> {
                    return BinOp(BinOp.OpType.AND, translateExpr(n.expr), Const(0x000000FF))
                }
                Primitive.CHAR -> {
                    return BinOp(BinOp.OpType.AND, translateExpr(n.expr), Const(0x0000FFFF))
                }

                Primitive.SHORT -> {
                    // translate int to short
                    return BinOp(BinOp.OpType.AND, translateExpr(n.expr), Const(0x0000FFFF))
                }
                else -> {
                    throw Exception("Primitive cast not implemented")
                }
            }
        }
        is RefCastExpr -> {
            val isCastable = generateRandomString()
            val value = generateRandomString()
            val cdvAddr = generateRandomString()
            val castableLabel = generateRandomString()
            val notCastableLabel = generateRandomString()
            val targetClassId = classIDs[n.classType.getFullyQualifiedName()]!!
            return ESeq(
                Seq(
                    listOf(
                        Move(
                            Temp(value),
                            translateExpr(n.expr)
                        ),
                        Move(
                            Temp(cdvAddr),
                            Mem(Temp(value))
                        ),
                        Move(
                            Temp(isCastable),
                            Mem(
                                BinOp(
                                    BinOp.OpType.ADD,
                                    GlobalVar(inHeritanceMatrixName),
                                    BinOp(
                                        BinOp.OpType.ADD,
                                        BinOp(
                                            BinOp.OpType.MUL,
                                            Mem(
                                                BinOp(
                                                    BinOp.OpType.ADD,
                                                    Temp(cdvAddr),
                                                    Const(4)
                                                )
                                            ),
                                            Const(classIDs.size * 4)
                                        ),
                                        Const(targetClassId * 4)
                                    )
                                )
                            )
                        ),
                        CJump(
                            BinOp(BinOp.OpType.EQ, Temp(isCastable), Const(1)),
                            castableLabel,
                            notCastableLabel
                        ),
                        Label(notCastableLabel),
                        Exp(Call(Name("__exception"))),
                        Label(castableLabel)
                    )
                ),
                Temp(value)
            )
        }
        is InstanceofExpr -> {
            val value = generateRandomString()
            val cdvAddr = generateRandomString()
            val targetClassId = if (n.varType is ArrayType) {
                classIDs["java.lang.Object"]!!
            } else {
                classIDs[n.varType.getFullyQualifiedName()]!!
            }
            val newVarName = generateRandomString()
            val isNullLabel = generateRandomString()
            val notNullLabel = generateRandomString()
            val endLabel = generateRandomString()
            return ESeq(
                Seq(
                    listOf(
                        Move(
                            Temp(value),
                            translateExpr(n.expr)
                        ),
                        CJump(BinOp(BinOp.OpType.EQ, Temp(value), Const(0)), isNullLabel, notNullLabel),
                        Label(isNullLabel),
                        Move(Temp(newVarName), Const(0)),
                        Jump(Name(endLabel)),
                        Label(notNullLabel),
                        Move(
                            Temp(cdvAddr),
                            Mem(Temp(value))
                        ),
                        Move(
                            Temp(newVarName),
                            Mem(
                                BinOp(
                                    BinOp.OpType.ADD,
                                    GlobalVar(inHeritanceMatrixName),
                                    BinOp(
                                        BinOp.OpType.ADD,
                                        BinOp(
                                            BinOp.OpType.MUL,
                                            Mem(
                                                BinOp(
                                                    BinOp.OpType.ADD,
                                                    Temp(cdvAddr),
                                                    Const(4)
                                                )
                                            ),
                                            Const(classIDs.size * 4)
                                        ),
                                        Const(targetClassId * 4)
                                    )
                                )
                            )
                        ),
                        Label(endLabel)
                    )
                ),
                Temp(newVarName)
            )
        }
        is ArrayAccess -> {
            val newArrayPointerName = generateRandomString()
            val newErrorLabel = generateRandomString()
            val newNonNullLabel = generateRandomString()
            val newIndexName = generateRandomString()
            val newInboundLabel = generateRandomString()
            return ESeq(
                Seq(
                    listOf(
                        // null check
                        Move(Temp(newArrayPointerName), translateExpr(n.arrayExpr)),
                        CJump(
                            BinOp(
                                BinOp.OpType.EQ,
                                Temp(newArrayPointerName),
                                Const(0)
                            ), newErrorLabel, newNonNullLabel
                        ),
                        Label(newErrorLabel),
                        Exp(Call(Name("__exception"))),
                        Label(newNonNullLabel),
                        // index check
                        Move(Temp(newIndexName), translateExpr(n.arrayIndex)),
                        CJump(
                            BinOp(
                                BinOp.OpType.LT,
                                Temp(newIndexName),
                                Mem(
                                    BinOp(
                                        BinOp.OpType.SUB,
                                        Temp(newArrayPointerName),
                                        Const(4)
                                    )
                                )
                            ),
                            newInboundLabel, newErrorLabel
                        ),
                        Label(newInboundLabel),
                    )
                ),
                Mem(
                    BinOp(
                        BinOp.OpType.ADD,
                        Temp(newArrayPointerName),
                        BinOp(
                            BinOp.OpType.ADD,
                            Const(4),
                            BinOp(
                                BinOp.OpType.MUL,
                                Temp(newIndexName),
                                Const(4)
                            )
                        )
                    )
                )
            )
        }
        is VariableAssignment-> {
            when (n.lhs) {
                is VariableAccess, is FieldAccess -> {
                    val value = generateRandomString()
                    return ESeq(
                        Seq(
                            listOf(
                                Move(
                                    Temp(value),
                                    translateExpr(n.value)
                                ),
                                Move(translateExpr(n.lhs), Temp(value)),
                            )
                        ),
                        Temp(value)
                    )
                }
                is ArrayAccess -> {
                    val newArrayPointerName = generateRandomString()
                    val newErrorLabel = generateRandomString()
                    val newNonNullLabel = generateRandomString()
                    val newIndexName = generateRandomString()
                    val newInboundLabel = generateRandomString()
                    val newVarName = generateRandomString()
                    return ESeq(
                        Seq(
                            listOf(
                                // null check
                                Move(
                                    Temp(newArrayPointerName),
                                    translateExpr(n.lhs.arrayExpr)
                                ),
                                CJump(
                                    BinOp(
                                        BinOp.OpType.EQ,
                                        Temp(newArrayPointerName),
                                        Const(0)
                                    ), newErrorLabel, newNonNullLabel
                                ),
                                Label(newErrorLabel),
                                Exp(Call(Name("__exception"))),
                                Label(newNonNullLabel),
                                // index check
                                Move(Temp(newIndexName), translateExpr(n.lhs.arrayIndex)),
                                CJump(BinOp(
                                        BinOp.OpType.LT,
                                        Temp(newIndexName),
                                        Mem(
                                            BinOp(
                                                BinOp.OpType.SUB,
                                                Temp(newArrayPointerName),
                                                Const(4)
                                            )
                                        )
                                    ), newInboundLabel, newErrorLabel),
                                Label(newInboundLabel),
                                // assignment
                                Move(Temp(newVarName), translateExpr(n.value)),
                                Move(
                                    Mem(
                                        BinOp(
                                            BinOp.OpType.ADD,
                                            Temp(newArrayPointerName),
                                            BinOp(
                                                BinOp.OpType.ADD,
                                                Const(4),
                                                BinOp(BinOp.OpType.MUL, Temp(newIndexName), Const(4))
                                            )
                                        )
                                    ), Temp(newVarName)
                                )
                            )
                        ),
                        Temp(newVarName)
                    )
                }
                else -> {
                    throw Exception("Not implemented: $n")
                }
            }
        }
        is NewArrayExpr -> {
            val newArrayLengthName = generateRandomString()
            val newArrayPointerName = generateRandomString()
            // TODO can all of the error labels be converged into a single one?
            val newErrorLabel = generateRandomString()
            val newNonNegativeArraySizeLabel = generateRandomString()
            val newLoopLabel = generateRandomString()
            val newLoopBodyLabel = generateRandomString()
            val newLoopEndLabel = generateRandomString()
            val newLoopArrayLengthName = generateRandomString()
            val newLoopArrayPointerName = generateRandomString()
            return ESeq(
                Seq(
                    listOf(
                        Move(Temp(newArrayLengthName), translateExpr(n.size)),
                        CJump(
                            BinOp(
                                BinOp.OpType.GEQ,
                                Temp(newArrayLengthName),
                                Const(0)
                            ), newNonNegativeArraySizeLabel, newErrorLabel
                        ),
                        Label(newErrorLabel),
                        Exp(Call(Name("__exception"))),
                        Label(newNonNegativeArraySizeLabel),
                        Move(
                            Temp(newArrayPointerName),
                            Call(
                                Name("__malloc"),
                                BinOp(
                                    BinOp.OpType.ADD,
                                    Const(8),
                                    BinOp(
                                        BinOp.OpType.MUL,
                                        Temp(newArrayLengthName),
                                        Const(4)
                                    )
                                )
                            )
                        ),
                        // store length
                        Move(
                            Mem(Temp(newArrayPointerName)),
                            Temp(newArrayLengthName)
                        ),
                        // store pointer to vtable
                        Move(
                            Mem(
                                BinOp(
                                    BinOp.OpType.ADD,
                                    Temp(newArrayPointerName),
                                    Const(4)
                                )
                            ), GlobalVar(getCDVName("java.lang.Object"))
                        ),
                        // initialize array to all 0
                        Move(
                            Temp(newLoopArrayLengthName),
                            Temp(newArrayLengthName)
                        ),
                        Move(
                            Temp(newLoopArrayPointerName),
                            BinOp(
                                BinOp.OpType.ADD,
                                Temp(newArrayPointerName),
                                Const(8)
                            )
                        ),
                        Label(newLoopLabel),
                        CJump(
                            BinOp(
                                BinOp.OpType.EQ,
                                Temp(newLoopArrayLengthName),
                                Const(0)
                            ), newLoopEndLabel, newLoopBodyLabel
                        ),
                        Label(newLoopBodyLabel),
                        Move(
                            Mem(Temp(newLoopArrayPointerName)),
                            Const(0)
                        ),
                        Move(
                            Temp(newLoopArrayPointerName),
                            BinOp(BinOp.OpType.ADD, Temp(newLoopArrayPointerName), Const(4))
                        ),
                        Move(
                            Temp(newLoopArrayLengthName),
                            BinOp(BinOp.OpType.SUB, Temp(newLoopArrayLengthName), Const(1))
                        ),
                        Jump(Name(newLoopLabel)),
                        Label(newLoopEndLabel)
                    )
                ),
                BinOp(BinOp.OpType.ADD, Temp(newArrayPointerName), Const(4))
            )
        }
        is NewObjectExpr -> {
            val metadata = classesMetadata[n.classType.getFullyQualifiedName()]!!
            val newObjectPointerName = generateRandomString()
            val cdvPointerName = getCDVName(n.classType.getFullyQualifiedName())
            val prevThisName = generateRandomString()
            return ESeq(
                Seq(
                    listOf(
                        // Allocate memory for object
                        Move(
                            Temp(newObjectPointerName),
                            Call(
                                Name("__malloc"),
                                Const(4 * metadata.fields.size + 4)
                            )
                        ),
                        // Store pointer to cdv in object memory
                        Move(
                            Mem(Temp(newObjectPointerName)),
                            GlobalVar(cdvPointerName)
                        )
                    ) +
                    listOf(
                        Move(
                            Temp(prevThisName),
                            Temp("this")
                        ),
                        // Set this to point to new object
                        Move(
                            Temp("this"),
                            Temp(newObjectPointerName)
                        ),
                    ) +
                    // default initialize fields
                    metadata.fields.map{
                        val defaultValue = if (it.value.expr == null) {
                            Const(0)
                        } else {
                            translateExpr(it.value.expr!!)
                        }
                        Move(
                            Mem(
                                BinOp(
                                    BinOp.OpType.ADD,
                                    Temp(newObjectPointerName),
                                    Const(metadata.fieldOffsets[it.key]!!)
                                )
                            ),
                            defaultValue
                        )
                    } +
                    listOf(
                        // Restore this
                        Move(
                            Temp("this"),
                            Temp(prevThisName)
                        )
                    ) +
                    listOf(
                        // Call constructor
                        Exp(Call(
                            Name(
                                getMethodName(
                                    PkgURI.fullyQualifiedNameToClassKey(n.classType.getFullyQualifiedName()),
                                    n.methodSignatureKey!!
                                )
                            ),
                            listOf(Temp(newObjectPointerName), Const(0)) + n.argsList.map { translateExpr(it) }
                        )),
                    )
                ),
                Temp(newObjectPointerName)
            )
        }
        is ArrayCastExpr -> {
            val newArrayPointerName = generateRandomString()
            val objectClassId = classIDs["java.lang.Object"]!!
            val trueLabel = generateRandomString()
            val falseLabel = generateRandomString()
            val cdvAddr = generateRandomString()
            val classIDVar = generateRandomString()
            return ESeq(
                Seq(
                    listOf(
                        Move(
                            Temp(newArrayPointerName),
                            translateExpr(n.expr)
                        ),
                        Move(
                            Temp(cdvAddr),
                            Mem(
                                BinOp(
                                    BinOp.OpType.ADD,
                                    Temp(newArrayPointerName),
                                    Const(0)
                                )
                            )
                        ),
                        Move(
                            Temp(classIDVar),
                            Mem(
                                BinOp(
                                    BinOp.OpType.ADD,
                                    Temp(cdvAddr),
                                    Const(4)
                                )
                            )
                        ),
                        CJump(
                            BinOp(
                                BinOp.OpType.EQ,
                                Temp(classIDVar),
                                Const(objectClassId)
                            ),
                            trueLabel,
                            falseLabel
                        ),
                        Label(falseLabel),
                        Exp(Call(Name("__exception"))),
                        Label(trueLabel),
                    ),

                ),
                Temp(newArrayPointerName)
            )
        }
    }
    throw Exception("Not implemented: $n")
}