package Translate

import java.util.*
import kotlin.collections.ArrayDeque
import kotlin.collections.HashMap
import kotlin.collections.HashSet

var regAllocStackCounter = 0
var regAllocStackOffset = 4
val generalRegisterSet = setOf("eax", "ebx", "ecx", "edx", "edi", "esi", "esp", "ebp")
val freeRegisterSet = setOf("ebx", "ecx", "edi", "esi") // eax, edx reserved for moving stack vars
// val nonUsedGeneralRegisterSet = generalRegisterSet.subtract(freeRegisterSet)
var regAllocMap: HashMap<String, String> = hashMapOf()
var regAllocSpillOffsetMap: HashMap<String, Int> = hashMapOf()
var allAbstractRegs = setOf<String>()
var degree = hashMapOf<String, Int>()
var spillAbstractRegSet = hashSetOf<String>()
// var memLabelSet = hashSetOf<String>()
var abstractRegisterGraph : HashMap<String, HashSet<String>> = hashMapOf()

fun addEdge(predecessor: AbstractAssemblyIns, successor: AbstractAssemblyIns) {
    predecessor.dfaSuccessors.add(successor)
    successor.dfaPredecessors.add(predecessor)
}

fun constructDataFlow(funcIns: List<AbstractAssemblyIns>) {
    // label hashmap
    val labelMap = hashMapOf<String, AbstractAssemblyIns>()
    for (ins in funcIns) {
        if (ins is Labl) {
            labelMap[ins.label] = ins
        }
    }
    for (i in funcIns.indices) {
        when(val ins = funcIns[i]) {
            is Jmp -> {
                addEdge(ins, labelMap[ins.label]!!)
            }
            // conditional jumps should not be last instruction
            is Jnz -> {
                addEdge(ins, labelMap[ins.label]!!)
                addEdge(ins, funcIns[i + 1])
            }
            is Jz -> {
                addEdge(ins, labelMap[ins.label]!!)
                addEdge(ins, funcIns[i + 1])
            }
//            is Jg -> {
//                addEdge(ins, labelMap[ins.label]!!)
//                addEdge(ins, funcIns[i + 1])
//            }
            else -> {
                if (i < funcIns.size - 1) {
                    addEdge(ins, funcIns[i + 1])
                }
            }
        }
    }
}

fun setUseAndDef(ins: AbstractAssemblyIns) {
    when (ins) {
        is Mov -> {
            // check if ins.src are digits
            if (ins.src.toIntOrNull() == null && !staticFieldOffsetMap.containsKey(ins.src)) {
                ins.use = setOf(ins.src)
            }
            ins.def = setOf(ins.dst)
        }
        is MemLoad -> {
            ins.use = setOf(ins.src)
            ins.def = setOf(ins.dst)
        }
        is MemStore -> {
            ins.use = setOf(ins.src, ins.dst)
        }
        is Add -> {
            ins.use = setOf(ins.src, ins.dst)
            ins.def = setOf(ins.dst)
        }
        is Sub -> {
            ins.use = setOf(ins.src, ins.dst)
            ins.def = setOf(ins.dst)
        }
        is Mul -> {
            ins.use = setOf(ins.src, ins.dst)
            ins.def = setOf(ins.dst)
        }
        is Div -> {
            ins.use = setOf(ins.src, ins.dst)
            ins.def = setOf(ins.dst)
        }
        is Mod -> {
            ins.use = setOf(ins.src, ins.dst)
            ins.def = setOf(ins.dst)
        }
        is And -> {
            ins.use = setOf(ins.src, ins.dst)
            ins.def = setOf(ins.dst)
        }
        is Or -> {
            ins.use = setOf(ins.src, ins.dst)
            ins.def = setOf(ins.dst)
        }
        is Xor -> {
            ins.use = setOf(ins.src, ins.dst)
            ins.def = setOf(ins.dst)
        }
        is Cmp -> {
            ins.use = setOf(ins.src, ins.dst)
        }
        is Test -> {
            ins.use = setOf(ins.src, ins.dst)
        }
        is Addi -> {
            ins.use = setOf(ins.dst)
            ins.def = setOf(ins.dst)
        }
        is Sete -> {
            // ins.def = setOf(ins.dst)
            spillToStack(ins.dst)
            spillAbstractRegSet.add(ins.dst)
        }
        is Setne -> {
            // ins.def = setOf(ins.dst)
            spillToStack(ins.dst)
            spillAbstractRegSet.add(ins.dst)
        }
        is Setg -> {
            // ins.def = setOf(ins.dst)
            spillToStack(ins.dst)
            spillAbstractRegSet.add(ins.dst)
        }
        is Setge -> {
            // ins.def = setOf(ins.dst)
            spillToStack(ins.dst)
            spillAbstractRegSet.add(ins.dst)
        }
        is Setl -> {
            // ins.def = setOf(ins.dst)
            spillToStack(ins.dst)
            spillAbstractRegSet.add(ins.dst)
        }
        is Setle -> {
            // ins.def = setOf(ins.dst)
            spillToStack(ins.dst)
            spillAbstractRegSet.add(ins.dst)
        }
        is Push -> {
            ins.use = setOf(ins.src)
        }
        is Pop -> {
            ins.def = setOf(ins.dst)
        }
        is Global -> {
            // ins.def = freeRegisterSet
        }
        is TempVarOffset -> {
            // ins.def = setOf("esp")
        }
        is Jmp, is Jz, is Jnz, is Labl, is Ret -> {
            // do nothing
        }
        is CallIns -> {
            ins.def = setOf("ecx")
        }
        else -> {
            throw Exception("Unknown instruction type ${ins.javaClass.simpleName}")
        }
    }

    // if (argOffsetMap.containsKey(reg) || staticFieldOffsetMap.containsKey(reg) || nonUsedGeneralRegisterSet.contains(reg) || spillAbstractRegSet.contains(reg) || memLabelSet.contains(reg)) {

    for (reg in ins.use) {
        if ((!registerStackOffsetMap.contains(reg) && !freeRegisterSet.contains(reg)) || argOffsetMap.containsKey(reg) || spillAbstractRegSet.contains(reg)) {
            ins.use = ins.use.subtract(setOf(reg))
        }
    }
    for (reg in ins.def) {
        if ((!registerStackOffsetMap.contains(reg) && !freeRegisterSet.contains(reg)) || argOffsetMap.containsKey(reg) || spillAbstractRegSet.contains(reg)) {
            ins.def = ins.def.subtract(setOf(reg))
        }
    }

    allAbstractRegs = allAbstractRegs.union(ins.use).union(ins.def)
}

fun livenessAnalysis(funcIns: List<AbstractAssemblyIns>) {
    // set use and def
    for (ins in funcIns) {
        setUseAndDef(ins)
    }

    for (ins in funcIns) {
        ins.use = ins.use.subtract(spillAbstractRegSet)
        ins.def = ins.def.subtract(spillAbstractRegSet)
    }
    allAbstractRegs = allAbstractRegs.subtract(spillAbstractRegSet)

    // worklist algorithm
    val worklist = funcIns.toMutableList()
    while (worklist.isNotEmpty()) {
        val assemblyIns = worklist.removeAt(0)
        val originalIn = assemblyIns.inn
        assemblyIns.out = setOf()
        for (successor in assemblyIns.dfaSuccessors) {
            assemblyIns.out = assemblyIns.out.union(successor.inn)
        }
        assemblyIns.inn = assemblyIns.use.union(assemblyIns.out.subtract(assemblyIns.def))
        if (!assemblyIns.inn.equals(originalIn)) {
            for (predecessor in assemblyIns.dfaPredecessors) {
                worklist.add(predecessor)
            }
        }
    }
}

fun spillToStack(abstractReg: String) {
    regAllocSpillOffsetMap[abstractReg] = regAllocStackOffset
    regAllocStackCounter += 1
    regAllocStackOffset += 4
}

fun optimisticColor(degreeSortedList: ArrayList<Pair<String, Int>>) {
    // println(degreeSortedList.size)

    var processedAbstractRegs = ArrayDeque<String>()
    while(degreeSortedList.isNotEmpty()) {
        // nodes <= k
        if (degreeSortedList.size <= freeRegisterSet.size) {
            var curFreeRegisterSet = freeRegisterSet.toSet()
            while (degreeSortedList.isNotEmpty()) {
                val (absReg, _) = degreeSortedList.removeFirst()
                var availableRegisters = curFreeRegisterSet.subtract(abstractRegisterGraph[absReg]!!)

                if (availableRegisters.isNotEmpty()) {
                    val selectedReg = availableRegisters.first()
                    regAllocMap[absReg] = selectedReg
                    curFreeRegisterSet = curFreeRegisterSet.subtract(setOf(selectedReg))
                } else {
                    spillToStack(absReg)
                }
            }
        }
        // if there exists a low degree node
        else if (degreeSortedList[0].second < freeRegisterSet.size) {
            val (abstractReg, deg) = degreeSortedList.removeFirst()
            if (deg == 0) {
                regAllocMap[abstractReg] = freeRegisterSet.first()
            } else {
                processedAbstractRegs.add(abstractReg)
            }
        } else {
            // push high degree node to stack
            val (abstractReg, _) = degreeSortedList.removeLast()
            processedAbstractRegs.add(abstractReg)
        }
    }

    while (processedAbstractRegs.isNotEmpty()) {
        val abstractReg = processedAbstractRegs.removeLast()

        var neighbourRegs = mutableSetOf<String>()
        for (neighbour in abstractRegisterGraph[abstractReg]!!) {
            if (regAllocMap.containsKey(neighbour)) {
                neighbourRegs.add(regAllocMap[neighbour]!!)
            } else if (freeRegisterSet.contains(neighbour)) {
                neighbourRegs.add(neighbour)
            }
        }

        val availableRegs = freeRegisterSet.subtract(neighbourRegs)
        if (availableRegs.isNotEmpty()) {
            regAllocMap[abstractReg] = availableRegs.first()
        } else {
//            if(degree[abstractReg]!! < freeRegisterSet.size) {
//                throw Exception("Not enough registers to allocate")
//            }
            spillToStack(abstractReg)
        }
    }
}

fun graphColoring(funcIns: List<AbstractAssemblyIns>) {
    degree = hashMapOf<String, Int>()

    for (absReg in allAbstractRegs) {
        abstractRegisterGraph[absReg] = hashSetOf()
    }

    // build graph
    for (ins in funcIns) {
        val out = ins.out.toList()
        for (i in 0 until out.size - 1) {
            for (j in i + 1 until out.size) {
                val absReg1 = out[i]
                val absReg2 = out[j]
                abstractRegisterGraph[absReg1]!!.add(absReg2)
                abstractRegisterGraph[absReg2]!!.add(absReg1)
            }
        }
    }

    // ecx = x
    // x <- 1 (ecx is set)
    // push ecx
    // call f
    // pop ecx
    // ret <- eax
    // y <- x

    // sort degree
    for ((absReg, neighbours) in abstractRegisterGraph) {
        degree[absReg] = neighbours.size
    }

    var degreeSortedList = arrayListOf<Pair<String, Int>>()
    for ((absReg, deg) in degree) {
        if (!generalRegisterSet.contains(absReg)) {
            degreeSortedList.add(Pair(absReg, deg))
        }
    }
    degreeSortedList.sortBy { it.second }

    optimisticColor(degreeSortedList)
}

fun allocateRegisters(funcIns: List<AbstractAssemblyIns>) {
    regAllocStackCounter = 0
    regAllocStackOffset = 4
    regAllocMap = hashMapOf()
    regAllocSpillOffsetMap = hashMapOf()
    abstractRegisterGraph = hashMapOf()
    allAbstractRegs = hashSetOf()
    abstractRegisterGraph = hashMapOf()
    degree = hashMapOf()
    spillAbstractRegSet = hashSetOf()

    // must spill _ret to stack b/c it might not be used
//    spillAbstractRegSet = hashSetOf("_RET")
//    spillToStack("_RET")

    // construct data flow graph
    constructDataFlow(funcIns)

    // liveness analysis
    livenessAnalysis(funcIns)

    // graph color
    graphColoring(funcIns)

    // verify graph is colored properly
    for (absReg in abstractRegisterGraph.keys) {
        if(regAllocMap.containsKey(absReg)) {
            for (neighbour in abstractRegisterGraph[absReg]!!) {
                if(argOffsetMap.containsKey(neighbour) || argOffsetMap.containsKey(absReg)) {
                    throw Exception("invalid neighbour")
                }

                if (!registerStackOffsetMap.containsKey(neighbour) && !freeRegisterSet.contains(neighbour)) {
                    throw Exception("invalid neighbour")
                }

                if(regAllocMap.containsKey(neighbour)) {
                    if (regAllocMap[absReg] == regAllocMap[neighbour]) {
                        throw Exception("Graph is not colored")
                    }
                } else if(freeRegisterSet.contains(neighbour)) {
                    if (regAllocMap[absReg] == neighbour) {
                        throw Exception("Graph is not colored")
                    }
                }
                else if(regAllocSpillOffsetMap.containsKey(neighbour)) {

                } else {
                    throw Exception("Graph is not colored ${absReg}")
                }
            }
        } else if(regAllocSpillOffsetMap.containsKey(absReg)) {

        } else if(freeRegisterSet.contains(absReg)) {

        } else {
            throw Exception("Graph is not colored wtf ${absReg}")
        }
    }
}

