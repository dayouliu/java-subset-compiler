package Translate

// i368 assembly instructions
// intel syntax

var useRegAllocFlag = true

abstract class AbstractAssemblyIns {
    var dfaPredecessors: MutableList<AbstractAssemblyIns> = mutableListOf()
    var dfaSuccessors: MutableList<AbstractAssemblyIns> = mutableListOf()
    var inn: Set<String> = setOf()
    var out: Set<String> = setOf()
    var use: Set<String> = setOf()
    var def: Set<String> = setOf()

    open fun toAssembly(): List<String> {
        return listOf()
    }

    fun stackAlloc(reg: String): String {
        if (useRegAllocFlag) {
            if (argOffsetMap.containsKey(reg)) {
                val offset = argOffsetMap[reg]!!
                return if (offset >= 0) {
                    "[ebp - ${offset}]"
                } else {
                    "[ebp + ${-offset}]"
                }
            } else if (staticFieldOffsetMap.containsKey(reg)) {
                return "[staticvar + ${staticFieldOffsetMap[reg]}]"
            } else if(regAllocMap.containsKey(reg)) {
                return regAllocMap[reg]!!
            } else if(regAllocSpillOffsetMap.containsKey(reg)) {
                return "[ebp - ${regAllocSpillOffsetMap[reg]}]"
            }
            return reg
        }

        else {
            if (registerStackOffsetMap.containsKey(reg)) {
                val offset = registerStackOffsetMap[reg]!!
                return if (offset >= 0) {
                    "[ebp - ${offset}]"
                } else {
                    "[ebp + ${-offset}]"
                }
            } else if (staticFieldOffsetMap.containsKey(reg)) {
                return "[staticvar + ${staticFieldOffsetMap[reg]}]"
            }
            return reg
        }
    }

    fun isAbstractReg(reg: String): Boolean {
        return registerStackOffsetMap.containsKey(reg) || staticFieldOffsetMap.containsKey(reg) || reg.matches(Regex("\\[.*\\]"))
    }
}

open class SrcDstIns(open val src: String, val dst: String) : AbstractAssemblyIns() {}

class Global(val name: String) : AbstractAssemblyIns() {
    override fun toAssembly(): List<String> {
        return listOf("global $name")
    }
}

class MemLoad(dst: String, src: String) : SrcDstIns(src, dst) {
    override fun toAssembly(): List<String> {
        return listOf(
            "mov dword eax, ${stackAlloc(src)}",
            "mov dword eax, [eax]",
            "mov dword ${stackAlloc(dst)}, eax",
        )
    }
}

class MemStore(dst: String, src: String) : SrcDstIns(src, dst) {
    override fun toAssembly(): List<String> {
        return listOf(
            "mov dword eax, ${stackAlloc(dst)}",
            "mov dword edx, ${stackAlloc(src)}",
            "mov dword [eax], edx",
        )
    }
}

class Mov(dst: String, src: String) : SrcDstIns(src, dst) {
    override fun toAssembly(): List<String> {
        if (isAbstractReg(dst) && isAbstractReg(src)) {
            return listOf(
                "mov dword eax, ${stackAlloc(src)}",
                "mov dword ${stackAlloc(dst)}, eax",
            )
        }
        return listOf(
            "mov dword ${stackAlloc(dst)}, ${stackAlloc(src)}",
        )
    }
}

class Add(dst: String, src: String) : SrcDstIns(src, dst) {
    override fun toAssembly(): List<String> {
        return listOf(
            "mov dword eax, ${stackAlloc(dst)}",
            "add eax, ${stackAlloc(src)}",
            "mov dword ${stackAlloc(dst)}, eax",
        )
    }
}
class Addi(val dst: String, val i: Int) : AbstractAssemblyIns() {
    override fun toAssembly(): List<String> {
        return listOf(
            "add ${stackAlloc(dst)}, $i",
        )
    }
}
class Sub(dst: String, src: String) : SrcDstIns(src, dst) {
    override fun toAssembly(): List<String> {
        return listOf(
            "mov dword eax, ${stackAlloc(dst)}",
            "sub eax, ${stackAlloc(src)}",
            "mov dword ${stackAlloc(dst)}, eax",
        )
    }
}
class Mul(dst: String, src: String) : SrcDstIns(src, dst) {
    override fun toAssembly(): List<String> {
        return listOf(
            "mov dword eax, ${stackAlloc(dst)}",
            "imul dword eax, ${stackAlloc(src)}",
            "mov dword ${stackAlloc(dst)}, eax",
        )
    }
}
class Div(dst: String, src: String) : SrcDstIns(src, dst) {
    override fun toAssembly(): List<String> {
        return listOf(
            "mov dword eax, ${stackAlloc(dst)}",
            "cdq",
            "idiv dword ${stackAlloc(src)}",
            "mov dword ${stackAlloc(dst)}, eax",
        )
    }
}
class Mod(dst: String, src: String) : SrcDstIns(src, dst) {
    override fun toAssembly(): List<String> {
        return listOf(
            "mov dword eax, ${stackAlloc(dst)}",
            "cdq",
            "idiv dword ${stackAlloc(src)}",
            "mov dword ${stackAlloc(dst)}, edx",
        )
    }
}
/*
class Inc(val dst: String) : AbstractAssemblyIns() {
    override fun toAssembly(): List<String> {
        return listOf("inc dword ${stackAlloc(dst)}")
    }
}
class Dec(val dst: String) : AbstractAssemblyIns() {
    override fun toAssembly(): List<String> {
        return listOf("dec dword ${stackAlloc(dst)}")
    }
}
*/
class Test(dst: String, src: String) : SrcDstIns(src, dst) {
    override fun toAssembly(): List<String> {
        return listOf(
            "mov dword eax, ${stackAlloc(dst)}",
            "test eax, ${stackAlloc(src)}",
        )
    }
}
class Cmp(dst: String, src: String) : SrcDstIns(src, dst) {
    override fun toAssembly(): List<String> {
        return listOf(
            "mov dword eax, ${stackAlloc(dst)}",
            "cmp eax, ${stackAlloc(src)}",
        )
    }
}
class And(dst: String, src: String) : SrcDstIns(src, dst) {
    override fun toAssembly(): List<String> {
        return listOf(
            "mov dword eax, ${stackAlloc(dst)}",
            "and eax, ${stackAlloc(src)}",
            "mov dword ${stackAlloc(dst)}, eax",
        )
    }
}
class Or(dst: String, src: String) : SrcDstIns(src, dst) {
    override fun toAssembly(): List<String> {
        return listOf(
            "mov dword eax, ${stackAlloc(dst)}",
            "or eax, ${stackAlloc(src)}",
            "mov dword ${stackAlloc(dst)}, eax",
        )
    }
}
class Xor(dst: String, src: String) : SrcDstIns(src, dst) {
    override fun toAssembly(): List<String> {
        return listOf(
            "mov dword eax, ${stackAlloc(dst)}",
            "xor eax, ${stackAlloc(src)}",
            "mov dword ${stackAlloc(dst)}, eax",
        )
    }
}
class Shl(dst: String, src: String) : SrcDstIns(src, dst) {
    override fun toAssembly(): List<String> {
        throw Exception("Not Implemented")
    }
}
class Shr(dst: String, src: String) : SrcDstIns(src, dst) {
    override fun toAssembly(): List<String> {
        throw Exception("Not Implemented")
    }
}
class Sar(dst: String, src: String) : SrcDstIns(src, dst) {
    override fun toAssembly(): List<String> {
        throw Exception("Not Implemented")
    }
}
class Jmp(val label: String) : AbstractAssemblyIns() {
    override fun toAssembly(): List<String> {
        return listOf("jmp $label")
    }
}
class Jz(val label: String) : AbstractAssemblyIns() {
    override fun toAssembly(): List<String> {
        return listOf("jz $label")
    }
}
class Jnz(val label: String) : AbstractAssemblyIns() {
    override fun toAssembly(): List<String> {
        return listOf("jnz $label")
    }
}
//class Jg(val label: String) : AbstractAssemblyIns() {
//    override fun toAssembly(): List<String> {
//        return listOf("jg $label")
//    }
//}
class Push(val src: String) : AbstractAssemblyIns() {
    override fun toAssembly(): List<String> {
        return listOf("push dword ${stackAlloc(src)}")
    }
}
class Pop(val dst: String) : AbstractAssemblyIns() {
    override fun toAssembly(): List<String> {
        return listOf("pop ${stackAlloc(dst)}")
    }
}
class CallIns(val target: String) : AbstractAssemblyIns() {
    override fun toAssembly(): List<String> {
        return listOf("call ${stackAlloc(target)}")
    }
}
class Ret() : AbstractAssemblyIns() {
    override fun toAssembly(): List<String> {
        return listOf("ret")
    }
}
class Sete(val dst: String) : AbstractAssemblyIns() {
    override fun toAssembly(): List<String> {
        return listOf(
            "mov dword ${stackAlloc(dst)}, 0",
            "sete ${stackAlloc(dst)}"
        )
    }
}
class Setne(val dst: String) : AbstractAssemblyIns() {
    override fun toAssembly(): List<String> {
        return listOf(
            "mov dword ${stackAlloc(dst)}, 0",
            "setne ${stackAlloc(dst)}"
        )
    }
}
class Setl(val dst: String) : AbstractAssemblyIns() {
    override fun toAssembly(): List<String> {
        return listOf(
            "mov dword ${stackAlloc(dst)}, 0",
            "setl ${stackAlloc(dst)}"
        )
    }
}
class Setg(val dst: String) : AbstractAssemblyIns() {
    override fun toAssembly(): List<String> {
        return listOf(
            "mov dword ${stackAlloc(dst)}, 0",
            "setg ${stackAlloc(dst)}"
        )
    }
}
class Setle(val dst: String) : AbstractAssemblyIns() {
    override fun toAssembly(): List<String> {
        return listOf(
            "mov dword ${stackAlloc(dst)}, 0",
            "setle ${stackAlloc(dst)}"
        )
    }
}
class Setge(val dst: String) : AbstractAssemblyIns() {
    override fun toAssembly(): List<String> {
        return listOf(
            "mov dword ${stackAlloc(dst)}, 0",
            "setge ${stackAlloc(dst)}"
        )
    }
}
class Labl(val label: String) : AbstractAssemblyIns() {
    override fun toAssembly(): List<String> {
        return listOf("$label:")
    }
}

//class MallocEsp() : AbstractAssemblyIns() {
//    override fun toAssembly(): List<String> {
//        return listOf("sub esp, 4*2")
//    }
//}

class TempVarOffset() : AbstractAssemblyIns() {
    override fun toAssembly(): List<String> {
        if (useRegAllocFlag) {
            return listOf("sub esp, 4*${regAllocSpillOffsetMap.size}")
        } else {
            return listOf("sub esp, 4*${counter}")
        }
    }
}

//class Lea(val dst: String, val src1: String, val src2: String, ) : AbstractAssemblyIns() {
//    override fun toAssembly(): List<String> {
//        throw Exception("Not Implemented")
//    }
//}

fun functionToAssembly(f: tir.ir.ast.FuncDecl): MutableList<String> {
//    if (f.name().contains("javalangStringhashCode")) {
//        println()
//    }

    val assembly = mutableListOf<String>()
    val fn = tileFunction(f)

    allocateRegisters(fn)

//    var regAllocMap: HashMap<String, String> = regAllocMap
//    var regAllocSpillOffsetMap: HashMap<String, Int> = regAllocSpillOffsetMap
//    var abstractRegisterGraph : HashMap<String, HashSet<String>> = abstractRegisterGraph
//    var allAbstractRegs: Set<String> = allAbstractRegs

    for (absAsm in fn) {
        // useRegAllocFlag = f.name() == "J11InstanceofInLazyExptest"
        assembly += absAsm.toAssembly()
    }

//    if (f.name().contains("J11InstanceofOfCastExpression")) {
//        println()
//    }
    return assembly
}