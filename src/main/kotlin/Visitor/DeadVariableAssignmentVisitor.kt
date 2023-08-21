class DeadVariableAssignmentVisitor(
    val warningList: ArrayList<String>
): Visitor() {
    override fun visit(n: Method) {
        worklistAlgorithm(n.block.startDFANode())
    }

    override fun visit(n: Constructor) {
        if (n.block != null) {
            worklistAlgorithm(n.block.startDFANode())
        }
    }

    fun checkVariableOccurenceInInitializer(initializer: Expr, variableName: String): Boolean {
        when (initializer) {
            is VariableAccess -> {
                if (initializer.variableName == variableName) {
                    return true
                }
            }
            is FieldAccess -> {
               return checkVariableOccurenceInInitializer(initializer.objectExpr, variableName)
            }
            is MethodCall -> {
                for (arg in initializer.argsList) {
                    if (checkVariableOccurenceInInitializer(arg, variableName)) {
                        return true
                    }
                }
                return checkVariableOccurenceInInitializer(initializer.objectExpr, variableName)
            }
            is ArrayAccess -> {
                return checkVariableOccurenceInInitializer(initializer.arrayExpr, variableName) || checkVariableOccurenceInInitializer(initializer.arrayIndex, variableName)
            }
            is NewArrayExpr -> {
                return checkVariableOccurenceInInitializer(initializer.size, variableName)
            }
            is NewObjectExpr -> {
                for (arg in initializer.argsList) {
                    if (checkVariableOccurenceInInitializer(arg, variableName)) {
                        return true
                    }
                }
                return false
            }
            is BinaryExpr -> {
                return checkVariableOccurenceInInitializer(initializer.left, variableName) || checkVariableOccurenceInInitializer(initializer.right, variableName)
            }
            is InstanceofExpr -> {
                return checkVariableOccurenceInInitializer(initializer.expr, variableName)
            }
            is UnaryExpr -> {
                return checkVariableOccurenceInInitializer(initializer.expr, variableName)
            }
            is VariableAssignment -> {
                return checkVariableOccurenceInInitializer(initializer.lhs, variableName) || checkVariableOccurenceInInitializer(initializer.value, variableName)
            }
            is PrimitiveCastExpr -> {
                return checkVariableOccurenceInInitializer(initializer.expr, variableName)
            }
            is ArrayCastExpr -> {
                return checkVariableOccurenceInInitializer(initializer.expr, variableName)
            }
            is RefCastExpr -> {
                return checkVariableOccurenceInInitializer(initializer.expr, variableName)
            }
            else -> {
                return false
            }
        }
        return false
    }


    override fun visit(n: VariableDecl) {
        if (n.value == null) {
            throw Exception("Variable declaration without initialization")
        } else if (checkVariableOccurenceInInitializer(n.value, n.name)) {
            throw Exception("Variable declaration with initialization that uses the variable itself")
        }
    }

    fun worklistAlgorithm(startingStatement: Statement) {
        val cfgNodes: MutableSet<Statement> = mutableSetOf()
        DataflowAnalysisVisitor.getCFGNodes(startingStatement, cfgNodes)
        val worklist = cfgNodes.toMutableList()

        while (worklist.isNotEmpty()) {
            val statement = worklist.removeAt(0)
            val originalIn = statement.inn
            statement.out = setOf()
            for (successor in statement.dfaSuccessors) {
                statement.out = statement.out.union(successor.inn)
            }
            statement.inn = statement.use.union(statement.out.subtract(statement.def))
            if (!statement.inn.equals(originalIn)) {
                for (predecessor in statement.dfaPredecessors) {
                    worklist.add(predecessor)
                }
            }
        }

        for (node in cfgNodes) {
            when (node) {
                is ExprStatement -> {
                    val expr = node.expr
                    if (expr is VariableAssignment && expr.lhs is VariableAccess && expr.lhs.use.isNotEmpty()) {
                        if (!node.out.contains(expr.lhs.variableName)) {
                            warningList.add("Dead variable assignment $node")
                        }
                    }
                }
                is ForInitializationExpr -> {
                    val stmt = node.expr
                    if (stmt != null && stmt is ExprStatement) {
                        val expr = stmt.expr
                        if (expr is VariableAssignment && expr.lhs is VariableAccess && expr.lhs.use.isNotEmpty()) {
                            if (!node.out.contains(expr.lhs.variableName)) {
                                warningList.add("Dead variable assignment $node")
                            }
                        }
                    }
                }
                is ForIterationExpr -> {
                    val expr = node.expr
                    if (expr is VariableAssignment && expr.lhs is VariableAccess && expr.lhs.use.isNotEmpty()) {
                        if (!node.out.contains(expr.lhs.variableName)) {
                            warningList.add("Dead variable assignment $node")
                        }
                    }
                }
            }
        }
    }
}