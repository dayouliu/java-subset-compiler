class DataflowAnalysisVisitor: Visitor() {
    companion object {
        fun getCFGNodes(node: Statement, cfgNodes: MutableSet<Statement>) {
            if (cfgNodes.contains(node)) {
                return
            }
            cfgNodes.add(node)
            for (successor in node.dfaSuccessors) {
                getCFGNodes(successor, cfgNodes)
            }
        }
    }

    private fun addEdge(predecessor: Statement, successor: Statement) {
        predecessor.dfaSuccessors.add(successor)
        successor.dfaPredecessors.add(predecessor)
    }

    private fun addEdge(predecessor: ArrayList<Statement>, successor: Statement) {
        for (pred in predecessor) {
            pred.dfaSuccessors.add(successor)
        }
        successor.dfaPredecessors.addAll(predecessor)
    }

    override fun visit(n: Method) {
        val methodEnd = DummyMethodEndStatement();
        addEdge(n.block.endDFANode(), methodEnd)
    }

    override fun visit(n: Block) {
        for (i in 0 until (n.statementList.size-1)) {
            addEdge(n.statementList[i].endDFANode(), n.statementList[i+1].startDFANode())
        }
    }

    // First successor is the then statement, if a else statement exists, the second successor is the else statement
    // if else block does not exist, the second successor is the end of the if statement
    override fun visit(n: If) {
        addEdge(n, n.thenStatement.startDFANode())
        if (n.elseStatement != null) {
            addEdge(n, n.elseStatement.startDFANode())
        }
    }

    // First successor is start of the block, second successor is the next statement after the while loop
    override fun visit(n: While) {
        addEdge(n, n.statement.startDFANode())
        addEdge(n.statement.endDFANode(), n)
    }

    override fun visit(n: For) {
        addEdge(n.initializationExpr, n.conditionExpr)
        addEdge(n.conditionExpr, n.statement.startDFANode())
        addEdge(n.statement.endDFANode(), n.iterationExpr)
        addEdge(n.iterationExpr, n.conditionExpr)
    }
}