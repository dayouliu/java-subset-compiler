class GraphConstructionVisitor(
    val symbolTable: SymbolTable,
    val classInheritanceGraph: HashMap<Pair<String, String>, ArrayList<Pair<String, String>>>,
    val debug: Boolean = false,
) : Visitor() {

    override fun visit(n: ClassDecl) {
        val currentClassPairKey = n.pairKey
        classInheritanceGraph[currentClassPairKey] = arrayListOf()
        // implements
        val implSet = HashSet<String>()
        for (implClass in n.implements) {
            val implClassFullName = symbolTable.getFullNameStringFromPkgURI(implClass.pkg_uri)
            if (implSet.contains(implClassFullName)) {
                throw Exception("An interface must not be repeated in an implements clause or in an extends clause of an interface. (JLS 8.1.4)")
            }
            implSet.add(implClassFullName)
            val implPairKey = symbolTable.getFullPairKeyKeyFromPkgURI(implClass.pkg_uri)
            classInheritanceGraph[currentClassPairKey]!!.add(implPairKey)
        }

        //extends
        if (n.realExtends != null) {
            val parentClassPairKey = symbolTable.getFullPairKeyKeyFromPkgURI(n.realExtends!!.pkg_uri)
            classInheritanceGraph[currentClassPairKey]!!.add(parentClassPairKey)
        }
    }

    override fun visit(n: InterfaceDecl) {
        val currentClassPairKey = n.pairKey
        classInheritanceGraph[currentClassPairKey] = arrayListOf()
        // extends
        for (extendNode in n.extendList) {
            val parentClassPairKey = symbolTable.getFullPairKeyKeyFromPkgURI(extendNode.pkg_uri)
            classInheritanceGraph[currentClassPairKey]!!.add(parentClassPairKey)
        }
    }

}