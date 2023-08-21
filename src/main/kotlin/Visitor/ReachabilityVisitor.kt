class ReachabilityVisitor (): Visitor() {
    override fun visit(n: Method) {
        val voidMethod = n.returnType is PrimitiveType && n.returnType.primitive == Primitive.VOID
        reachabilityEvaluation(n.block.startDFANode(), voidMethod)
    }

    override fun visit(n: Constructor) {
        if (n.block != null) {
            reachabilityEvaluation(n.block.startDFANode(), true)
        }
    }
    fun reachabilityEvaluation(startingStatement: Statement, voidMethod: Boolean) {
        val allStatements = mutableSetOf<Statement>()
        DataflowAnalysisVisitor.getCFGNodes(startingStatement, allStatements)
        val reachableStatements = mutableSetOf<Statement>()

        // dfs on startingStatement
        val worklist = mutableListOf(startingStatement)
        while (worklist.isNotEmpty()) {
            val statement = worklist.removeAt(0)
            if (statement !in reachableStatements) {
                reachableStatements.add(statement)
                when (statement) {
                    is ReturnStatement -> {
                        // do nothing
                    }
                    is While -> {
                        val constantEval = evalConstExprCond(statement.expr)
                        if (constantEval != null) {
                            if (constantEval.boolEval() == true) {
                                worklist.add(statement.dfaSuccessors[0])
                            } else {
                                if (statement.dfaSuccessors.size == 2) {
                                    worklist.add(statement.dfaSuccessors[1])
                                }
                            }
                        } else {
                            for (successor in statement.dfaSuccessors) {
                                worklist.add(successor)
                            }
                        }
                    }
                    is ForConditionExpr -> {
                        val constantEval = evalConstExprCond(statement.expr)
                        if (statement.expr != null && constantEval != null) {
                            if (constantEval.boolEval() == true) {
                                worklist.add(statement.dfaSuccessors[0])
                            } else {
                                if (statement.dfaSuccessors.size == 2) {
                                    worklist.add(statement.dfaSuccessors[1])
                                }
                            }
                        } else {
                            for (successor in statement.dfaSuccessors) {
                                worklist.add(successor)
                            }
                        }
                    }
                    else -> {
                        if (statement.dfaSuccessors.isEmpty() && !voidMethod) {
                            throw Exception("non-void method does not properly terminate with return")
                        }

                        for (successor in statement.dfaSuccessors) {
                            worklist.add(successor)
                        }
                    }
                }
            }
        }
        // check if all statements are reachable using set diff
        val unreachableStatements = allStatements.subtract(reachableStatements)

        val onlyMethodEndDummy = unreachableStatements.size == 1 && unreachableStatements.elementAt(0) is DummyMethodEndStatement
        val reachable = onlyMethodEndDummy || unreachableStatements.isEmpty()

        if (!reachable) {
            throw Exception("Unreachable statements: $unreachableStatements")
        }
    }
}