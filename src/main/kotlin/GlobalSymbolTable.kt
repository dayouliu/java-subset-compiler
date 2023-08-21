class GlobalSymbolTable() {
    val table = HashMap<Pair<String, String>, ClassOrInterface>()
    var parentClassTable: HashMap<Pair<String, String>, Pair<String, String>?> = hashMapOf()

    fun insertAST(ast: Java) {
        val key = Pair(ast.pkg_decl.lst.joinToString("."), ast.class_or_interface.name)
        if (table.containsKey(key)){
            throw Exception("Duplicate pkg name & class name declared")
        }
        table[key] = ast.class_or_interface
        ast.class_or_interface.pairKey = key
    }

    fun getClassFromPkgImport(pkgURI: PkgURI): ClassOrInterface {
        val key = pkgURI.getPairKey()
        return getClassFromPairKey(key)
    }

    fun getClassFromPairKey(key: Pair<String, String>): ClassOrInterface {
        if (!table.containsKey(key)) {
            throw Exception("PkgURI not found in global table: $key")
        }
        return table[key]!!
    }
    fun getPkgImportsFromImportStar(pkgURI: PkgURI): List<Pair<String, ClassOrInterface>> {
        if (!pkgURI.includeStar) {
            throw Exception("Must be a pkguri with includeStar")
        }
        val pkgName = pkgURI.getPkgImportPkgName()
        val filteredTable = table.filterKeys { it.first == pkgName }
        if (filteredTable.isEmpty() && table.filterKeys { it.first.startsWith("$pkgName.") }.isEmpty()) {
            throw Exception("Import-on-demand declaration does not refer to any valid package: $pkgName")
        }
        return filteredTable.map { (key, classOrInterface) ->
                Pair(key.second, classOrInterface)
            }
    }
    fun checkTypeMatchPkgNamePrefix(type: PkgURI) {
        val type = type.lst.joinToString(".")
        if (table.filterKeys { it.first == type }.isNotEmpty() ||
            table.filterKeys { it.first.startsWith("$type.") }.isNotEmpty()) {
            throw Exception("No package names that are used may resolve to types, except for types in the default, unnamed package: $type")
        }
    }

    private fun detectCycle(curClass: Pair<String, String>, visited: HashMap<Pair<String, String>, Boolean>,
                            recStack: HashMap<Pair<String, String>, Boolean>): Boolean {
        visited[curClass] = true
        recStack[curClass] = true
        val parentClass = parentClassTable[curClass]
        if (parentClass != null) {
            if (!visited[parentClass]!! && detectCycle(parentClass, visited, recStack)) return true
            if (recStack[parentClass]!!) return true
        }
        recStack[curClass] = false
        return false
    }

    fun detectInheritanceCycle() {
        val visited: HashMap<Pair<String, String>, Boolean> = hashMapOf()
        val recStack : HashMap<Pair<String, String>, Boolean> = hashMapOf()
        for (n in parentClassTable.keys) {
            visited[n] = false
            recStack[n] = false
        }
        for (n in parentClassTable.keys) {
            if (!visited[n]!!) {
                if (detectCycle(n, visited, recStack)) {
                    throw Exception("Inheritance cycle detected")
                }
            }
        }
    }

    fun printTable(){
        println("GLOBAL TABLE: ${table.keys}")
    }
}