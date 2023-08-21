import tir.ir.ast.*

var constantPropFlag = false
class ConstPropFact(
    var isUnreachable: Boolean = true,
    val allVariableStates: MutableMap<String, VariableState> = mutableMapOf(),
): Cloneable{
    public override fun clone(): ConstPropFact {
        val newVariableStates = mutableMapOf<String, VariableState>()
        for ((key, value) in allVariableStates){
            newVariableStates[key] = value
        }
        return ConstPropFact(isUnreachable, newVariableStates)
    }

    fun isEqual(other: ConstPropFact): Boolean {
        if (isUnreachable != other.isUnreachable) {
            return false
        }
        if (allVariableStates.size != other.allVariableStates.size) {
            return false
        }
        for ((key, state) in allVariableStates) {
            if (other.allVariableStates[key] == null) {
                return false
            }
            if (state is Top && other.allVariableStates[key] !is Top) {
                return false
            }
            if (state is Bottom && other.allVariableStates[key] !is Bottom) {
                return false
            }
            if (state is Value && other.allVariableStates[key] !is Value) {
                return false
            }
            if (state is Value && other.allVariableStates[key] is Value) {
                if (state.value != (other.allVariableStates[key] as Value).value) {
                    return false
                }
            }
        }
        return true
    }

    companion object {
        fun joinVariableState(state1: VariableState, state2: VariableState): VariableState {
           return  when (state1) {
                is Top -> {
                    when (state2) {
                        is Top -> Top()
                        is Bottom ->  Bottom()
                        is Value -> Value(state2.value)
                        else -> {
                            throw Exception("Unknown VariableState")
                        }
                    }
                }
                is Bottom -> {
                    when (state2) {
                        is Top ->  Bottom()
                        is Bottom ->  Bottom()
                        is Value ->  Bottom()
                        else -> {
                            throw Exception("Unknown VariableState")
                        }
                    }
                }
                is Value -> {
                    when (state2) {
                        is Top ->  Value(state1.value)
                        is Bottom ->  Bottom()
                        is Value -> {
                            if (state1.value == state2.value) {
                                 Value(state1.value)
                            } else {
                                 Bottom()
                            }
                        }
                        else -> {
                            throw Exception("Unknown VariableState")
                        }
                    }
                }
               else -> {
                   throw Exception("Unknown VariableState")}
           }
        }
    }

    fun join(other: ConstPropFact) {
        val newVariableStates = mutableMapOf<String, VariableState>()
        for ((key, vState) in allVariableStates) {
            val otherVState = other.allVariableStates[key]
            if (otherVState != null) {
                newVariableStates[key] = joinVariableState(vState, otherVState)
            } else {
                newVariableStates[key] = vState
            }
        }
        // TODO not needed, remove later
        for ((key, vState) in other.allVariableStates) {
            if (!newVariableStates.containsKey(key)) {
                newVariableStates[key] = vState
            }
        }
        allVariableStates.clear()
        allVariableStates.putAll(newVariableStates)
        isUnreachable = isUnreachable && other.isUnreachable
    }
    fun applyStmt(lir: Stmt) {
        when (lir) {
            is Move -> {
                val target = lir.target()
                val source = lir.source()
                if (target is Temp) {
                    val sourceState = evaluateExpr(source, allVariableStates)
                    allVariableStates[target.name()] = joinVariableState(sourceState, allVariableStates[target.name()]!!)
                }
            }
        }
    }
}

abstract class VariableState{}
class Top: VariableState() {}
class Bottom: VariableState() {}
class Value(val value: Int): VariableState() {}

fun evaluateExpr(e: tir.ir.ast.Expr, allVariableStates: MutableMap<String, VariableState>): VariableState {
    return when (e) {
        is Const -> {
            Value(e.value())
        }
        is Temp -> {
            allVariableStates[e.name()]!!
        }
        is BinOp -> {
            val leftState = evaluateExpr(e.left(), allVariableStates)
            val rightState = evaluateExpr(e.right(), allVariableStates)
            if (leftState is Value && rightState is Value) {
                when (e.opType()) {
                    BinOp.OpType.ADD -> Value(leftState.value + rightState.value)
                    BinOp.OpType.SUB -> Value(leftState.value - rightState.value)
                    BinOp.OpType.MUL -> Value(leftState.value * rightState.value)
                    BinOp.OpType.DIV -> Value(leftState.value / rightState.value)
                    BinOp.OpType.MOD -> Value(leftState.value % rightState.value)
                    BinOp.OpType.AND -> Value(leftState.value and rightState.value)
                    BinOp.OpType.OR -> Value(leftState.value or rightState.value)
                    BinOp.OpType.XOR -> Value(leftState.value xor rightState.value)
                    BinOp.OpType.LSHIFT -> Value(leftState.value shl rightState.value)
                    BinOp.OpType.RSHIFT -> Value(leftState.value shr rightState.value)
                    BinOp.OpType.ARSHIFT -> Value(leftState.value ushr rightState.value)
                    BinOp.OpType.EQ -> Value(if (leftState.value == rightState.value) 1 else 0)
                    BinOp.OpType.NEQ -> Value(if (leftState.value != rightState.value) 1 else 0)
                    BinOp.OpType.LT -> Value(if (leftState.value < rightState.value) 1 else 0)
                    BinOp.OpType.GT -> Value(if (leftState.value > rightState.value) 1 else 0)
                    BinOp.OpType.LEQ -> Value(if (leftState.value <= rightState.value) 1 else 0)
                    BinOp.OpType.GEQ -> Value(if (leftState.value >= rightState.value) 1 else 0)
                    else -> {
                        throw Exception("Unknown BinOp")
                    }
                }
            } else if (leftState is Bottom || rightState is Bottom) {
                if (e.opType() == BinOp.OpType.MUL && (leftState is Value && leftState.value == 0 || rightState is Value && rightState.value == 0)) {
                    Value(0)
                } else {
                    Bottom()
                }
            } else {
                Top()
            }
        }
        else -> {
            Top()
        }
    }
}

class LIRNode(
    val stmt: Stmt,
    var dfaPredecessors: List<LIRNode>,
    var dfaSuccessors: List<LIRNode>,
    val inn : ConstPropFact,
    var out : ConstPropFact,
) {
    override fun toString(): String {
        return stmt.toString()
    }
}
fun propagateConstants(lir: List<Stmt>): List<Stmt> {
    if (!constantPropFlag){
        return lir
    }
    val initialVariableState = initializeAllVariableStates(lir)
    val startFact = ConstPropFact(false, initialVariableState)
    val labelMap = mutableMapOf<String, LIRNode>()
    val LIRNodes = mutableListOf<LIRNode>()
    for (stmt in lir){
        val predecessors = mutableListOf<LIRNode>()
        val successors = mutableListOf<LIRNode>()
        val inn = startFact.clone()
        val out = startFact.clone()
        val lirNode = LIRNode(stmt, predecessors, successors, inn, out)
        if (stmt is Label) {
            labelMap[stmt.name()] = lirNode
        }
        LIRNodes.add(lirNode)
    }
    for ((index, lirNode) in LIRNodes.withIndex()) {
        val stmt = lirNode.stmt
        // connect lirNodes
        when (stmt) {
            is Jump -> {
                val targetLabel = (stmt.target() as Name).name()
                val targetLIRNode = labelMap[targetLabel]!!
                lirNode.dfaSuccessors = listOf(targetLIRNode)
                targetLIRNode.dfaPredecessors += listOf(lirNode)
            }
            is CJump -> {
                val trueLabel = stmt.trueLabel()
                val trueLIRNode = labelMap[trueLabel]!!
                lirNode.dfaSuccessors += listOf(trueLIRNode)
                trueLIRNode.dfaPredecessors += listOf(lirNode)
                lirNode.dfaSuccessors += LIRNodes.getOrNull(index + 1)?.let { listOf(it) } ?: listOf()
                LIRNodes.getOrNull(index + 1)?.let { it.dfaPredecessors += listOf(lirNode) }
            }
            else -> {
                lirNode.dfaSuccessors += LIRNodes.getOrNull(index + 1)?.let { listOf(it) } ?: listOf()
                LIRNodes.getOrNull(index + 1)?.let { it.dfaPredecessors += listOf(lirNode) }
            }
        }
    }
    val workList = LIRNodes.toMutableList()
    while (workList.isNotEmpty()) {
        val lirNode = workList.removeFirst()
        val stmt = lirNode.stmt
        if (lirNode.dfaPredecessors.isEmpty()) {
            // start node
            lirNode.inn.isUnreachable = false
        } else {
            for (predecessor in lirNode.dfaPredecessors) {
                lirNode.inn.join(predecessor.out)
            }
        }
        val newOut = lirNode.inn.clone()
        newOut.applyStmt(stmt)
        if (!newOut.isEqual(lirNode.out)) {
            lirNode.out = newOut
            for (successor in lirNode.dfaSuccessors) {
                workList.add(successor)
            }
        }
    }

    val newLIR = mutableListOf<Stmt>()
    for (lirNode in LIRNodes) {
        if (!lirNode.out.isUnreachable) {
            val newStmt = updateStatement(lirNode.stmt, lirNode.out.allVariableStates)
            if (newStmt != null) {
                newLIR.add(newStmt)
            }
        }
    }
    return newLIR
}

fun updateStatement(stmt: Stmt, allVariableStates: MutableMap<String, VariableState>): Stmt? {
    return when (stmt) {
        is Move -> {
            val source = stmt.source()
            val target = stmt.target()
            val sourceState = evaluateExpr(source, allVariableStates)
            val newSourceExpr = if (sourceState is Value) {
                Const(sourceState.value)
            } else {
                source
            }
            Move(target, newSourceExpr)
        }
        is Jump -> {
            val target = stmt.target()
            val targetState = evaluateExpr(target, allVariableStates)
            val newTargetExpr = if (targetState is Value) {
                Const(targetState.value)
            } else {
                target
            }
            Jump(newTargetExpr)
        }
        is CJump -> {
            val cond = stmt.cond()
            val trueLabel = stmt.trueLabel()
            val falseLabel = stmt.falseLabel()
            val condState = evaluateExpr(cond, allVariableStates)
            if (condState is Value) {
                if (condState.value == 0) {
                    null // unreachable
                } else {
                    Jump(Name(trueLabel))
                }
            } else {
                stmt
            }
        }
        is Return -> {
            val ret = stmt.ret()
            val retState = evaluateExpr(ret, allVariableStates)
            val newRetExpr = if (retState is Value) {
                Const(retState.value)
            } else {
                ret
            }
            Return(newRetExpr)
        }
        is CallStmt -> {
            val args = stmt.args()
            val newArgs = args.map { arg ->
                val argState = evaluateExpr(arg, allVariableStates)
                if (argState is Value) {
                    Const(argState.value)
                } else {
                    arg
                }
            }
            CallStmt(stmt.target(), newArgs)
        }
        is Label -> {
            stmt
        }
        else -> {
            throw Exception("Unknown statement type: ${stmt.javaClass}")
        }
    }
}

fun initializeAllVariableStates(lir: List<Stmt>): MutableMap<String, VariableState> {
    val allVariableStates = mutableMapOf<String, VariableState>()
    for (stmt in lir) {
        allVariableStates.putAll(getAllTempVariables(stmt))
    }
    return allVariableStates
}
fun getAllTempVariables(lirNode: tir.ir.ast.Node): MutableMap<String, VariableState> {
    val allTempVariables = mutableMapOf<String, VariableState>()
    when (lirNode) {
        is Temp -> {
            allTempVariables[lirNode.name()] = Top()
        }
        is Return -> {
            allTempVariables.putAll(getAllTempVariables(lirNode.ret()))
        }
        is BinOp -> {
            allTempVariables.putAll(getAllTempVariables(lirNode.left()))
            allTempVariables.putAll(getAllTempVariables(lirNode.right()))
        }
        is CallStmt -> {
            for (arg in lirNode.args()) {
                allTempVariables.putAll(getAllTempVariables(arg))
            }
        }
        is Move -> {
            allTempVariables.putAll(getAllTempVariables(lirNode.source()))
            allTempVariables.putAll(getAllTempVariables(lirNode.target()))
        }
        is Seq -> {
            for (stmt in lirNode.stmts()) {
                allTempVariables.putAll(getAllTempVariables(stmt))
            }
        }
        is ESeq -> {
            allTempVariables.putAll(getAllTempVariables(lirNode.stmt()))
            allTempVariables.putAll(getAllTempVariables(lirNode.expr()))
        }
        is Jump -> {
            allTempVariables.putAll(getAllTempVariables(lirNode.target()))
        }
        is CJump -> {
            allTempVariables.putAll(getAllTempVariables(lirNode.cond()))
        }
        is Exp -> {
            allTempVariables.putAll(getAllTempVariables(lirNode.expr()))
        }
        is Label -> {
            // do nothing
        }
        is Const -> {
            // do nothing
        }
        is Name -> {
            // do nothing
        }
        is Mem -> {
            allTempVariables.putAll(getAllTempVariables(lirNode.expr()))
        }
        is GlobalVar -> {
            // do nothing
        }
        else -> {
            throw Exception("Unknown LIR node type: ${lirNode.javaClass}")
        }
    }
    return allTempVariables
}