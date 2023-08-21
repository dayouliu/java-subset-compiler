import tir.ir.ast.*

fun translateFn(classKey: Pair<String, String>, methodKey: String, n: MethodLike): FuncDecl {
    var block = when (n) {
        is Method -> n.block
        is Constructor -> n.block
        else -> throw Exception("n must be Method or Constructor")
    }
    val parameterList = mutableListOf<Stmt>()
    var index = 0
    if (!n.modifier_list.contains(Modifier.STATIC)) {
        parameterList.add(Move(Temp("this"), Temp("_ARG0")))
        parameterList.add(Move(Temp("_ID"), Temp("_ARG1")))
        index += 2
    }
    for (parameter in n.parameter_list) {
        val newArgName = "_ARG$index"
        parameterList.add(
            Move(
                Temp(parameter.name),
                Temp(newArgName)
            )
        )
        index++
    }
//    val fBody = if (n is Constructor) {
//        Seq(parameterList + translateStmt(block) + Return(Const(0)))
//
//    } else {
//        Seq(parameterList + translateStmt(block))
//    }
    val fBody = Seq(parameterList + translateStmt(block) + Return(Const(0)))
    return FuncDecl(
        getMethodName(classKey, methodKey),
        -1,
        fBody
    )
}

fun translateStaticField(classKey: Pair<String, String>, f: Field): Stmt {
    return if (f.expr == null) {
        Move(
            GlobalVar(getFieldName(classKey, f.name)),
            Const(0)
        )
    } else {
        Move(
            GlobalVar(getFieldName(classKey, f.name)),
            translateExpr(f.expr)
        )
    }
}