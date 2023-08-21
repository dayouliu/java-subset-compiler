class LiveVariableAnalysisVisitor(
    val symbolTableVisitor: SymbolTableVisitor,
): Visitor() {
    private fun setUseAndDef(n: ExprOrStatement, exprs: List<ExprOrStatement>) {
        n.use = setOf()
        n.def = setOf()
        for (expr in exprs) {
            n.use = n.use.union(expr.use.subtract(n.def))
            n.def = n.def.union(expr.def)
        }
    }

    override fun visit(n: ParenWrappedExpr) {
        setUseAndDef(n, listOf(n.expr))
    }

    override fun visit(n: VariableAccess) {
        symbolTableVisitor.lookupLocalSymbol(n.variableName) ?: return
        n.use = mutableSetOf(n.variableName)
    }

    override fun visit(n: FieldAccess) {
        setUseAndDef(n, listOf(n.objectExpr))
    }

    override fun visit(n: MethodCall) {
        setUseAndDef(n, listOf(n.objectExpr) + n.argsList)
    }

    override fun visit(n: ArrayAccess) {
        setUseAndDef(n, listOf(n.arrayExpr, n.arrayIndex))
    }

    override fun visit(n: NewArrayExpr) {
        setUseAndDef(n, listOf(n.size))
    }

    override fun visit(n: NewObjectExpr) {
        setUseAndDef(n, n.argsList)
    }

    override fun visit(n: BinaryExpr) {
        setUseAndDef(n, listOf(n.left, n.right))
    }

    override fun visit(n: InstanceofExpr) {
        setUseAndDef(n, listOf(n.expr))
    }

    override fun visit(n: UnaryExpr) {
        setUseAndDef(n, listOf(n.expr))
    }

    override fun visit(n: VariableAssignment) {
        if (n.lhs is VariableAccess) {
            n.use = n.value.use
            n.def = n.value.def.union(n.lhs.use)
        } else {
            setUseAndDef(n, listOf(n.lhs, n.value))
        }
    }

    override fun visit(n: PrimitiveCastExpr) {
        setUseAndDef(n, listOf(n.expr))
    }

    override fun visit(n: ArrayCastExpr) {
        setUseAndDef(n, listOf(n.expr))
    }

    override fun visit(n: RefCastExpr) {
        setUseAndDef(n, listOf(n.expr))
    }

    override fun visit(n: VariableDecl) {
        if (n.value != null) {
            setUseAndDef(n, listOf(n.value))
        }
        n.def = n.def.union(setOf(n.name))
    }

    override fun visit(n: ReturnStatement) {
        if (n.expr != null) {
            setUseAndDef(n, listOf(n.expr))
        }
    }

    override fun visit(n: If) {
        setUseAndDef(n, listOf(n.expr))
    }

    override fun visit(n: While) {
        setUseAndDef(n, listOf(n.expr))
    }

    override fun visit(n: ForInitializationExpr) {
        if (n.expr != null) {
            setUseAndDef(n, listOf(n.expr))
        }
    }

    override fun visit(n: ForConditionExpr) {
        if (n.expr != null) {
            setUseAndDef(n, listOf(n.expr))
        }
    }

    override fun visit(n: ForIterationExpr) {
        if (n.expr != null) {
            setUseAndDef(n, listOf(n.expr))
        }
    }

    override fun visit(n: ExprStatement) {
        setUseAndDef(n, listOf(n.expr))
    }
}