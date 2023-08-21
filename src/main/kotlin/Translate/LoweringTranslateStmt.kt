import tir.ir.ast.*

fun loweringTranslateStmt(s: Stmt): MutableList<Stmt>{
    when (s) {
        is Label -> {
            return mutableListOf(s)
        }
        is Seq -> {
            val newStmtList = mutableListOf<Stmt>()
            for (stmt in s.stmts()) {
                newStmtList.addAll(loweringTranslateStmt(stmt))
            }
            return newStmtList
        }
        is Jump -> {
            val (stmts, expr) = loweringTranslateExpr(s.target())
            return (stmts + Jump(expr)) as MutableList<Stmt>
        }
        is CJump -> {
            // TODO: Optimize CJumps using Basic blocks, CFGs, traces
            val (stmts, expr) = loweringTranslateExpr(s.cond())
            return (stmts + CJump(expr, s.trueLabel()) + Jump(Name(s.falseLabel()))) as MutableList<Stmt>
        }
        is Exp -> {
            val (stmts, _) = loweringTranslateExpr(s.expr())
            return stmts
        }
        is Return -> {
            val (stmts, expr) = loweringTranslateExpr(s.ret())
            return (stmts + Return(expr)) as MutableList<Stmt>
        }
        is Move -> {
            when (s.target()) {
                is Temp -> {
                    val (stmts2, expr2) = loweringTranslateExpr(s.source())
                    return (stmts2 + Move(s.target(), expr2)) as MutableList<Stmt>
                }
                is Mem -> {
                    val (stmts1, expr1) = loweringTranslateExpr((s.target() as Mem).expr())
                    val (stmts2, expr2) = loweringTranslateExpr(s.source())
                    val t = generateRandomString()
                    return (stmts1 + Move(Temp(t), expr1) + stmts2 + Move(Mem(Temp(t)), expr2)) as MutableList<Stmt>
                }
                is GlobalVar -> {
                    val (stmts2, expr2) = loweringTranslateExpr(s.source())
                    return (stmts2 + Move(s.target(), expr2)) as MutableList<Stmt>
                }
                is ESeq -> {
                    val target = s.target() as ESeq
                    return (loweringTranslateStmt(target.stmt()) + loweringTranslateStmt(Move(target.expr(), s.source()))) as MutableList<Stmt>
                }
                else -> {
                    throw Exception("Invalid MOVE target")
                }
            }
        }
    }
    return mutableListOf()
}