import java.io.IOException

internal class SymTableException(str: String?) : IOException(str)

class SymbolTableScope(val name: String, val node: Node, val symTable: HashMap<String, Node>) {
    override fun toString(): String {
        var hashMapStr = "{"
        for ((k, v) in symTable) {
            hashMapStr += "$k=${v.javaClass.name},"
        }
        hashMapStr += "}"
        return "($name, $hashMapStr)"
    }
}

// only for variables!
class SymbolTableVisitor(
    val localSymbolTable:LocalSymbolTable,
    val debug: Boolean = false
) : Visitor() {
    var symTableStack = arrayListOf<SymbolTableScope>()
    var curClass: ClassDecl? = null
    var curMethod: MethodLike? = null
    var curField: Field? = null
    var declaredFields: HashSet<String> = hashSetOf()

    fun pushSymTable(name: String, n: Node) {
        if (debug) {
//            println(symTableStack)
        }
        symTableStack.add(SymbolTableScope(name, n, hashMapOf()))
    }

    fun popSymTable() {
        if (debug) {
//            println(symTableStack)
        }
        var symTableScope = symTableStack.removeLast()
    }

    fun lookupLocalSymbol(name: String): Node? {
        for (i in symTableStack.size - 1 downTo 0) {
            if (symTableStack[i].symTable.containsKey(name)) {
                return symTableStack[i].symTable[name]
            }
            if (symTableStack[i].node is Method) {
                break
            }
        }
        return null
    }

    fun addSymbol(name: String, node: Node) {
        if (symTableStack.isEmpty()) {
            throw SymTableException("symbol $name declared outside of any scope for name: $name")
        }
        if (lookupLocalSymbol(name) != null) {
            // println(symTableStack.last())
            throw SymTableException("symbol $name redeclared in the same local scope name: $name")
        }
        symTableStack.last().symTable[name] = node
    }

    fun exit() {
        popSymTable()
    }

    override fun visit(n: Java) {
        localSymbolTable.insertCurrentClassAndPackage(n)
        localSymbolTable.insertImportListPackages(n)
        localSymbolTable.mergeTables()
        pushSymTable("java", n)
    }

    override fun visit(n: ClassDecl) {
        pushSymTable(n.name, n);
        curClass = n
    }

    fun exitClass() {
        declaredFields = hashSetOf()
    }

    override fun visit(n: Parameter) {
        addSymbol(n.name, n)
    }

    override fun visit(n: Constructor) {
        pushSymTable("constructor:" + n.name, n)
        curMethod = n
    }

    override fun visit(n: Method) {
        pushSymTable(n.name, n)
        curMethod = n
    }

    override fun visit(n: MethodDecl) {
        pushSymTable(n.name, n)
    }

    override fun visit(n: VariableDecl) {
        addSymbol(n.name, n)
    }

    override fun visit(n: Block) {
        pushSymTable("block", n)
    }

    override fun visit(n: For) {
        pushSymTable("for", n)
    }

    override fun visit(n: Field) {
        curField = n
    }

    fun exitField() {
        declaredFields.add(curField!!.name)
        curField = null
    }

    fun exitMethod() {
        curMethod = null
    }

    override fun visit(n: VariableAssignment) {
        if (n.lhs is VariableAccess) {
            n.lhs.lhsFieldRef = true
        }
    }

    override fun visit(n: This) {
        n.currentClass = curClass
    }
}
