import tir.ir.ast.*
fun translateStmt(n: Statement): Stmt {
    when (n) {
        is VariableDecl -> {
            return Move(Temp(n.name), translateExpr(n.value!!))
        }
        is Block -> {
            return Seq(n.statementList.map { translateStmt(it) })
        }
        is If -> {
            val newTrueLabel = generateRandomString()
            val newFalseLabel = generateRandomString()
            if (n.elseStatement == null) {
                return Seq(
                    listOf(
                        translateCond(n.expr, newTrueLabel, newFalseLabel),
                        Label(newTrueLabel),
                        translateStmt(n.thenStatement),
                        Label(newFalseLabel)
                    )
                )
            } else {
                val newEndLabel = generateRandomString()
                return Seq(
                    listOf(
                        translateCond(n.expr, newTrueLabel, newFalseLabel),
                        Label(newTrueLabel),
                        translateStmt(n.thenStatement),
                        Jump(Name(newEndLabel)),
                        Label(newFalseLabel),
                        translateStmt(n.elseStatement),
                        Label(newEndLabel)
                    )
                )
            }
        }
        is ReturnStatement -> {
            if (n.expr == null) {
                // TODO what to do with void functions?
                return Return(Const(0))
            } else {
                return Return(translateExpr(n.expr))
            }
        }
        is While -> {
            val newWhileLabel = generateRandomString()
            val newTrueLabel = generateRandomString()
            val newFalseLabel = generateRandomString()
            return Seq(
                listOf(
                    Label(newWhileLabel),
                    translateCond(n.expr, newTrueLabel, newFalseLabel),
                    Label(newTrueLabel),
                    translateStmt(n.statement),
                    Jump(Name(newWhileLabel)),
                    Label(newFalseLabel),
                )
            )
        }
        is For -> {
            val newForLabel = generateRandomString()
            val newTrueLabel = generateRandomString()
            val newFalseLabel = generateRandomString()
            return Seq(
                listOf(
                    translateStmt(n.initializationExpr),
                    Label(newForLabel),
                    // TODO investigate how to get rid of !! here
                    translateCond(n.conditionExpr.expr!!, newTrueLabel, newFalseLabel),
                    Label(newTrueLabel),
                    translateStmt(n.statement),
                    translateStmt(n.iterationExpr),
                    Jump(Name(newForLabel)),
                    Label(newFalseLabel),
                )
            )
        }
        is ExprStatement -> {
            return Exp(translateExpr(n.expr))
        }
        is ForInitializationExpr -> {
            if (n.expr == null) {
                return Seq(listOf())
            }
            return translateStmt(n.expr)
        }
        is ForIterationExpr -> {
            if (n.expr == null) {
                return Seq(listOf())
            }
            return Exp(translateExpr(n.expr))
        }
        is ForConditionExpr -> {
            if (n.expr == null) {
                return Seq(listOf())
            }
            return Exp(translateExpr(n.expr))
        }
        is Semicolon -> {
            return Seq(listOf())
        }
        else -> {
            throw Exception("Not implemented: $n")
        }
    }
}