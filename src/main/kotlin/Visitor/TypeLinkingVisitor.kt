class TypeLinkingVisitor(
    val globalSymbolTable: GlobalSymbolTable,
    val localSymbolTable: LocalSymbolTable,
) : Visitor() {
    override fun visit(n: Java) {
        if (n.pkg_decl.lst.isNotEmpty()) {
            val type = PkgURI(n.pkg_decl.lst + n.class_or_interface.name)
            globalSymbolTable.checkTypeMatchPkgNamePrefix(type)
        }
    }

    override fun visit(n: CompoundVariableType) {
        if (n.pkg_uri.isSimpleName()) {
            val variableClass = n.pkg_uri.lst[0]
            if (!localSymbolTable.localTypeLinkTable.containsKey(variableClass)) {
                throw Exception("All simple type names must resolve to a unique class or interface: $variableClass")
            }
            if (localSymbolTable.localTypeLinkTable[variableClass] == null) {
                throw Exception("Ambiguous class type name: $variableClass")
            }
            n.fullyQualifiedNameVar = localSymbolTable.getStringFullNameFromSimpleName(variableClass)
        } else {
            globalSymbolTable.getClassFromPkgImport(n.pkg_uri)
            var lst = n.pkg_uri.lst.dropLast(1)
            while (lst.isNotEmpty()) {
                if (localSymbolTable.localTypeLinkTable.containsKey(lst.joinToString("."))) {
                    throw Exception("When a fully qualified name resolves to a type, no strict prefix of the fully qualified name can resolve to a type in the same environment")
                }
                lst = lst.dropLast(1)
            }
            n.fullyQualifiedNameVar = n.pkg_uri.lst.joinToString(".")
        }
    }
}