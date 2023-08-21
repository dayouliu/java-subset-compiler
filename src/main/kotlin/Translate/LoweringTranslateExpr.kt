import tir.ir.ast.*

fun loweringTranslateExpr(e: tir.ir.ast.Expr): Pair<MutableList<Stmt>, tir.ir.ast.Expr> {
    when (e) {
        is Temp, is Name, is Const -> {
            return Pair(mutableListOf(), e)
        }
        is Mem -> {
            val (stmts, expr) = loweringTranslateExpr(e.expr())
            return Pair(stmts, Mem(expr))
        }
        is ESeq -> {
            val stmts1 = loweringTranslateStmt(e.stmt())
            val (stmts2, expr) = loweringTranslateExpr(e.expr())
            return Pair((stmts1 + stmts2) as MutableList<Stmt>, expr)
        }
        is BinOp -> {
            // TODO: Need to write the optimization for when the left and right does not affect each other
            val (stmts1, expr1) = loweringTranslateExpr(e.left())
            val (stmts2, expr2) = loweringTranslateExpr(e.right())
            val newTempVar = generateRandomString()
            return Pair(
                (stmts1 + Move(
                    Temp(newTempVar),
                    expr1
                ) + stmts2) as MutableList<Stmt>,
                BinOp(e.opType(), Temp(newTempVar), expr2)
            )
        }
        is Call -> {
            val argStmtList = mutableListOf<MutableList<Stmt>>()
            val argExprList = mutableListOf<tir.ir.ast.Expr>()
            val newTempVarList = mutableListOf<String>()
            for (arg in e.args()) {
                val (stmts, expr) = loweringTranslateExpr(arg)
                argStmtList.add(stmts)
                argExprList.add(expr)
                newTempVarList.add(generateRandomString())
            }
            val stmtList = argStmtList.zip(argExprList).zip(newTempVarList).flatMap { (arg, newTempVar) ->
                arg.first + Move(Temp(newTempVar), arg.second)
            } + CallStmt(
                e.target(),
                newTempVarList.map { Temp(it) })
            return Pair(stmtList as MutableList<Stmt>, Temp("_RET"))
        }
    }
    return Pair(mutableListOf(), e)
}