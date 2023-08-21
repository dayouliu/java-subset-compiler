class ClassMetadata {
    val fields: LinkedHashMap<String, Field> = linkedMapOf()
    val methods: LinkedHashMap<String, MethodLike> = linkedMapOf()
    val fieldOffsets: LinkedHashMap<String, Int> = linkedMapOf()
    val methodOffsets: LinkedHashMap<String, Int> = linkedMapOf()
}

val classesMetadata: HashMap<String, ClassMetadata> = hashMapOf()

var methodIDGenerator = 0;
val methodIDs: HashMap<String, Int> = hashMapOf()
var classIDGenerator = 0
val classIDs: HashMap<String, Int> = hashMapOf()
val classIDToClassName: HashMap<Int, String> = hashMapOf()
val inHeritanceMatrixName = "__inheritance_matrix"

fun hashMethod(methodSignatureKey: String): Int {
    return methodSignatureKey.hashCode()
}

class TranslateVisitor(
    val symbolTableVisitor: SymbolTableVisitor,
    val globalClassEntryTable: GlobalClassEntryTable,
) : Visitor() {
    override fun visit(n: Java) {
        classIDs[n.class_or_interface.fullyQualifiedName()] = classIDGenerator
        classIDToClassName[classIDGenerator] = n.class_or_interface.fullyQualifiedName()
        classIDGenerator++
        if (n.class_or_interface is InterfaceDecl) {
            return
        }
        val thisClass = n.class_or_interface as ClassDecl
        val classEntryTable = globalClassEntryTable.globalClassEntryTable[thisClass.pairKey]!!
        val metadata = ClassMetadata()
        classesMetadata[thisClass.fullyQualifiedName()] = metadata
        val fields: LinkedHashMap<String, Field> = linkedMapOf()
        classEntryTable.fieldMap.forEach{
            if (!it.value.modifier_list.contains(Modifier.STATIC)) {
                fields[it.key] = it.value
            }
        }
        val methods: HashMap<String, MethodLike> = hashMapOf()
        classEntryTable.methodMap.forEach {
            if (!it.value.modifier_list.contains(Modifier.STATIC)) {
                methods[it.key] = it.value
            }
        }
        classEntryTable.methodDeclMap.forEach {
            if (!it.value.modifier_list.contains(Modifier.STATIC)) {
                methods[it.key] = it.value
            }
        }
        if (thisClass.realExtends == null) {
            methods.forEach {
                metadata.methods[it.key] = it.value
            }
            fields.forEach {
                metadata.fields[it.key] = it.value
            }
        } else {
            val parentMetadata = classesMetadata[thisClass.realExtends!!.getFullyQualifiedName()]!!
            parentMetadata.fields.forEach {
                metadata.fields[it.key] = fields[it.key]!!
            }
            fields.forEach {
                if (!parentMetadata.fields.containsKey(it.key)) {
                    metadata.fields[it.key] = it.value
                }
            }
            parentMetadata.methods.forEach {
                metadata.methods[it.key] = methods[it.key]!!
            }
            methods.forEach {
                if (!parentMetadata.methods.containsKey(it.key)) {
                    metadata.methods[it.key] = it.value
                }
            }
        }
        var offset = 4
        metadata.fields.forEach{
            metadata.fieldOffsets[it.key] = offset
            offset += 4
        }
        offset = 8
        metadata.methods.forEach{
            metadata.methodOffsets[it.key] = offset
            offset += 4
        }
    }

    override fun visit(n: VariableAccess) {
        // Local variable
        val localId = symbolTableVisitor.lookupLocalSymbol(n.variableName)
        if (localId != null) {
            return
        }

        // Field
        val fieldMap = globalClassEntryTable.globalClassEntryTable[symbolTableVisitor.curClass!!.pairKey]!!.fieldMap
        if (fieldMap.containsKey(n.variableName)) {
            n.isField = true
        }
        n.curClass = symbolTableVisitor.curClass!!.fullyQualifiedName()
    }

    override fun visit(n: Method) {
        if (!methodIDs.containsKey(n.getMethodSignatureKey())) {
            methodIDs[n.getMethodSignatureKey()] = methodIDGenerator
            methodIDGenerator++
        }
        n.methodClassKey = symbolTableVisitor.curClass!!.pairKey
    }

    override fun visit(n: Constructor) {
        n.methodClassKey = symbolTableVisitor.curClass!!.pairKey
    }
}