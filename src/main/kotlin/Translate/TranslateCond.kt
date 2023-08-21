import tir.ir.ast.*

fun translateCond(n: Expr, trueLabel: String, falseLabel: String): Stmt {
    when (n) {
        is BoolLiteral -> {
            if (n.b) {
                return Jump(Name(trueLabel))
            } else {
                return Jump(Name(falseLabel))
            }
        }
        is UnaryExpr -> {
            if (n.unaryOperator == UnaryOperator.NOT) {
                return translateCond(n.expr, falseLabel, trueLabel)
            } else {
                throw Exception("Not implemented")
            }
        }
        is BinaryExpr -> {
            when (n.op) {
                ArithmeticOperator.AND -> {
                    val newLabel = generateRandomString()
                    return Seq(
                        listOf(
                            translateCond(n.left, newLabel, falseLabel),
                            Label(newLabel),
                            translateCond(n.right, trueLabel, falseLabel)
                        )
                    )
                }
                ArithmeticOperator.OR -> {
                    val newLabel = generateRandomString()
                    return Seq(
                        listOf(
                            translateCond(n.left, trueLabel, newLabel),
                            Label(newLabel),
                            translateCond(n.right, trueLabel, falseLabel)
                        )
                    )
                }
                else -> {
                    return CJump(translateExpr(n), trueLabel, falseLabel)
                }
            }
        }
        else -> {
            return CJump(translateExpr(n), trueLabel, falseLabel)
        }
    }
}