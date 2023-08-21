import tir.ir.ast.*

fun translateJavaProgram(j: Java, globalClassEntryTable: GlobalClassEntryTable): List<FuncDecl> {
    val fnList = mutableListOf<FuncDecl>()
    val classKey = j.class_or_interface.pairKey
    val classEntryTable = globalClassEntryTable.globalClassEntryTable[classKey]!!
//    for (field in classEntryTable.fieldMap.values) {
//        fnList.add(translateField(field))
//    }
    for ((methodKey, method) in classEntryTable.methodMap) {
        if (method.methodClassKey!! == classKey) {
            fnList.add(translateFn(classKey, methodKey, method))
        }
    }
    for ((methodKey, method) in classEntryTable.constructorMap) {
        if (method.methodClassKey!! == classKey) {
            fnList.add(translateFn(classKey, methodKey, method))
        }
    }
    return fnList
}