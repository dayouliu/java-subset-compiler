package Translate

import tir.ir.ast.*
import tir.ir.ast.BinOp.OpType

// hashmap to map abstract registers to stack offsets from ebp
// stored location = ebp - offset
val registerStackOffsetMap = HashMap<String, Int>()
var offset = 4
var counter = 0
val staticFieldOffsetMap = HashMap<String, Int>()
val argOffsetMap = HashMap<String, Int>()
var staticOffset = 0
var curFuncDecl: FuncDecl? = null

fun genReg(): String {
    val name = "extra_abstract_register_$counter"
    registerStackOffsetMap[name] = offset
    counter++
    offset += 4
    return name
}

fun tileExpr(e: tir.ir.ast.Expr) {
    when (e) {
        is Temp -> {
            //println("TEMP: ${e.name()}")
            e.outputRegister = e.name()
            e.instructions = mutableListOf()
            if (!registerStackOffsetMap.containsKey(e.name())) {
                registerStackOffsetMap[e.name()] = offset
                counter++
                offset += 4
            }
        }
        is Const -> {
            e.outputRegister = genReg()
            e.instructions = mutableListOf(Mov(e.outputRegister, e.value().toString())) as List<AbstractAssemblyIns>
        }
        is GlobalVar -> {
            //println("GLOBAL: ${e.name()}")
            e.outputRegister = e.name()
            e.instructions = mutableListOf()
            if (!staticFieldOffsetMap.containsKey(e.name())) {
                staticFieldOffsetMap[e.name()] = staticOffset
                staticOffset += 4
            }
        }
        is Mem -> {
            tileExpr(e.expr())
            e.outputRegister = genReg()
            e.instructions = e.expr().instructions() + MemLoad(e.outputRegister, e.expr().outputRegister())
        }
        is BinOp -> {
            tileExpr(e.left())
            tileExpr(e.right())
            e.outputRegister = genReg()

            // ADD, SUB, MUL, DIV, MOD, AND, OR, XOR, LSHIFT, RSHIFT, ARSHIFT, EQ, NEQ, LT, GT, LEQ, GEQ
            when(e.opType()) {
                OpType.ADD -> {
                    e.instructions = e.left().instructions() + e.right().instructions() + Add(e.left().outputRegister(), e.right().outputRegister()) + Mov(e.outputRegister, e.left().outputRegister())
                }
                OpType.SUB -> {
                    e.instructions = e.left().instructions() + e.right().instructions() + Sub(e.left().outputRegister(), e.right().outputRegister()) + Mov(e.outputRegister, e.left().outputRegister())
                }
                OpType.MUL -> {
                    e.instructions = e.left().instructions() + e.right().instructions() + Mul(e.left().outputRegister(), e.right().outputRegister()) + Mov(e.outputRegister, e.left().outputRegister())
                }
                OpType.DIV -> {
                    e.instructions = e.left().instructions() + e.right().instructions() + Div(e.left().outputRegister(), e.right().outputRegister()) + Mov(e.outputRegister, e.left().outputRegister())
                }
                OpType.MOD -> {
                    e.instructions = e.left().instructions() + e.right().instructions() + Mod(e.left().outputRegister(), e.right().outputRegister()) + Mov(e.outputRegister, e.left().outputRegister())
                }
                OpType.AND -> {
                    e.instructions = e.left().instructions() + e.right().instructions() + And(e.left().outputRegister(), e.right().outputRegister()) + Mov(e.outputRegister, e.left().outputRegister())
                }
                OpType.OR -> {
                    e.instructions = e.left().instructions() + e.right().instructions() + Or(e.left().outputRegister(), e.right().outputRegister()) + Mov(e.outputRegister, e.left().outputRegister())
                }
                OpType.XOR -> {
                    e.instructions = e.left().instructions() + e.right().instructions() + Xor(e.left().outputRegister(), e.right().outputRegister()) + Mov(e.outputRegister, e.left().outputRegister())
                }
                OpType.LSHIFT -> {
                    e.instructions = e.left().instructions() + e.right().instructions() + Shl(e.left().outputRegister(), e.right().outputRegister()) + Mov(e.outputRegister, e.left().outputRegister())
                }
                OpType.RSHIFT -> {
                    e.instructions = e.left().instructions() + e.right().instructions() + Shr(e.left().outputRegister(), e.right().outputRegister()) + Mov(e.outputRegister, e.left().outputRegister())
                }
                OpType.ARSHIFT -> {
                    e.instructions = e.left().instructions() + e.right().instructions() + Sar(e.left().outputRegister(), e.right().outputRegister()) + Mov(e.outputRegister, e.left().outputRegister())
                }
                OpType.EQ -> {
                    e.instructions = e.left().instructions() + e.right().instructions() + Cmp(e.left().outputRegister(), e.right().outputRegister()) + Sete(e.outputRegister)
                }
                OpType.NEQ -> {
                    e.instructions = e.left().instructions() + e.right().instructions() + Cmp(e.left().outputRegister(), e.right().outputRegister()) + Setne(e.outputRegister)
                }
                OpType.LT -> {
                    e.instructions = e.left().instructions() + e.right().instructions() + Cmp(e.left().outputRegister(), e.right().outputRegister()) + Setl(e.outputRegister)
                }
                OpType.GT -> {
                    e.instructions = e.left().instructions() + e.right().instructions() + Cmp(e.left().outputRegister(), e.right().outputRegister()) + Setg(e.outputRegister)
                }
                OpType.LEQ -> {
                    e.instructions = e.left().instructions() + e.right().instructions() + Cmp(e.left().outputRegister(), e.right().outputRegister()) + Setle(e.outputRegister)
                }
                OpType.GEQ -> {
                    e.instructions = e.left().instructions() + e.right().instructions() + Cmp(e.left().outputRegister(), e.right().outputRegister()) + Setge(e.outputRegister)
                }
            }
        }
        is Name -> {
            e.outputRegister = e.name()
            e.instructions = mutableListOf()
        }
        else -> {
            throw Exception("Expression tile Not implemented: $e")
        }
    }
}

//fun tileCallMove(call: CallStmt, move: Move) {
//    for (arg in call.args()) {
//        tileExpr(arg)
//        call.instructions = call.instructions + arg.instructions() + Push(arg.outputRegister())
//    }
//    if (call.target() !is Name) {
//        throw Exception("CallStmt target must be a name")
//    }
//    call.instructions = call.instructions + CallIns((call.target() as Name).name())
//    if (move.target() !is Temp) {
//        throw Exception("tile function call move target must be a temp")
//    }
//    call.instructions = call.instructions + Mov(move.target().outputRegister(), "eax")
//    call.instructions = call.instructions + Addi("esp", call.args().size * 4)
//
//}

fun tileStatement(s: tir.ir.ast.Stmt) {
    when (s) {
        is Seq -> {
            for (stmt in s.stmts()) {
                tileStatement(stmt)
                s.instructions = s.instructions + stmt.instructions
            }
        }
        is Jump -> {
            tileExpr(s.target())
            s.instructions = mutableListOf(Jmp(s.target().outputRegister())) as List<AbstractAssemblyIns>
        }
        is CJump -> {
            tileExpr(s.cond())
            s.instructions = s.cond().instructions() + Test(s.cond().outputRegister(), s.cond().outputRegister()) + Jnz(s.trueLabel())
        }
        is CallStmt -> {
            s.instructions = s.instructions + Push("eax") + Push("ecx") + Push("edx")
            if (s.target() is Name && ((s.target() as Name).name() == "__malloc" || (s.target() as Name).name() == "NATIVEjava.io.OutputStream.nativeWrite")) {
                assert(s.args().size == 1)
                tileExpr(s.args()[0])
                s.instructions = s.instructions + s.args()[0].instructions() + Mov("eax", s.args()[0].outputRegister())
                s.instructions = s.instructions + CallIns((s.target() as Name).name())
            } else {
                for (arg in s.args().reversed()) {
                    tileExpr(arg)
                    s.instructions = s.instructions + arg.instructions() + Push(arg.outputRegister())
                }
                if (s.target() is Name) {
                    s.instructions = s.instructions + CallIns((s.target() as Name).name())
                } else {
                    tileExpr(s.target())
                    s.instructions = s.instructions + s.target().instructions() + CallIns(s.target().outputRegister())
                }
                s.instructions = s.instructions + Addi("esp", s.args().size * 4)
            }
            if (!registerStackOffsetMap.containsKey("_RET")) {
                registerStackOffsetMap["_RET"] = offset
                counter++
                offset += 4
            }
            s.instructions = s.instructions + Pop("edx") + Pop("ecx") + Mov("_RET", "eax") + Mov("eax", "_RET") + Pop("eax")
        }
        is Move -> {
            val target = s.target()
            val src = s.source()
            if (target is Temp && src is Temp && src.name().startsWith("_ARG")) {
                val argIdx = src.name().substring(4).toInt()
                registerStackOffsetMap[target.name()] = -(8+4*argIdx)
                argOffsetMap[target.name()] = -(8+4*argIdx)
            } else if (s.target() is Temp && s.source() is Const) {
                tileExpr(s.target())
                s.instructions = listOf( Mov((s.target() as Temp).name(), (s.source() as Const).value().toString()) )
            }
//            else if (s.target() is Temp && s.source() is Temp) {
//                s.instructions = listOf( Mov((s.target() as Temp).name(), (s.source() as Temp).name()) )
//            }
            else if (s.target() is Temp && src is Temp && src.name() == "_RET") {
                tileExpr(s.target())
                tileExpr(s.source())
                s.instructions = s.target().instructions() + Mov(s.target().outputRegister(), s.source().outputRegister())
            } else if (target is Mem) {
                tileExpr(target.expr())
                tileExpr(s.source())
                s.instructions = target.expr().instructions() + s.source().instructions() + MemStore(target.expr().outputRegister(), s.source().outputRegister())
            } else {
                tileExpr(s.target())
                tileExpr(s.source())
                s.instructions = s.source().instructions() + s.target().instructions() + Mov(s.target().outputRegister(), s.source().outputRegister())
            }
        }
        is Label -> {
            s.instructions = mutableListOf(Labl(s.name())) as List<AbstractAssemblyIns>
        }
        is Return -> {
            tileExpr(s.ret())
            s.instructions = s.ret().instructions() + Mov("eax", s.ret().outputRegister()) + Jmp(curFuncDecl!!.asmReturnLabel())
        }
        else -> {
            throw Exception("Statement tile Not implemented")
        }
    }
}

fun prologue(f: tir.ir.ast.FuncDecl) {
    f.instructions = f.instructions + Push("ebp") + Mov("ebp", "esp") + TempVarOffset()
    f.instructions = f.instructions + Push("ebx") + Push("edi") + Push("esi")
}

fun epilogue(f: tir.ir.ast.FuncDecl) {
    f.instructions = f.instructions + Labl(f.asmReturnLabel()) + Pop("esi") + Pop("edi") + Pop("ebx")
    f.instructions = f.instructions + Mov("esp", "ebp") + Pop("ebp") + Ret()
}

fun tileFunction(f: tir.ir.ast.FuncDecl): List<AbstractAssemblyIns> {
    registerStackOffsetMap.clear()
    argOffsetMap.clear()
    offset = 4
    counter = 0
    curFuncDecl = f
    val identifier = removeNonAlphanumericCharacters(f.name())
    f.instructions = listOf(Global(identifier), Labl(identifier))
    prologue(f)
    val body = f.body()
    if (body is Seq) {
        tileStatement(body)
        f.instructions = f.instructions + f.body().instructions
    } else {
        throw Exception("Function body of ${f.name()} should be a Seq, not $body")
    }
    epilogue(f)
    return f.instructions
}

fun removeNonAlphanumericCharacters(s: String): String {
    return s.replace(Regex("[^A-Za-z0-9]"), "").substringBefore("(")
}