class LocalSymbolTable(
    val globalSymbolTable: GlobalSymbolTable,
    val debug: Boolean = false
) {
    var localTypeLinkTable = HashMap<String, ClassOrInterface?>()
    var localTypeLinkTablePkg = HashMap<String, String>()
    var thisPackageTable = HashMap<String, ClassOrInterface?>()
    var thisPackageTablePkg = HashMap<String, String>()
    var importOnDemandTable = HashMap<String, ClassOrInterface?>()
    var importOnDemandTablePkg = HashMap<String, String>()
    fun getClassFromSimpleName(simpleName: String): ClassOrInterface {
        if (!localTypeLinkTable.containsKey(simpleName)){
            throw Exception("cannot find entry in local symbol table $simpleName")
        }
        return localTypeLinkTable.get(simpleName)!!
    }

    fun getPkgClassNameFromSimpleName(simpleName: String): Pair<String, String> {
        if (!localTypeLinkTablePkg.containsKey(simpleName)){
            throw Exception("cannot find entry in local symbol table pkg $simpleName")
        }
        return Pair(localTypeLinkTablePkg[simpleName]!!, simpleName);
    }

    fun getStringFullNameFromSimpleName(simpleName: String): String {
        if (!localTypeLinkTablePkg.containsKey(simpleName)){
            throw Exception("cannot find entry in local symbol table pkg $simpleName")
        }
        return "${localTypeLinkTablePkg[simpleName]!!}.$simpleName"
    }

    fun insertCurrentClassAndPackage(n: Java) {
        val thisPackage = PkgURI(n.pkg_decl.lst + "*")
        thisPackage.includeStar = true
        localTypeLinkTable[n.class_or_interface.name] = n.class_or_interface
        localTypeLinkTablePkg[n.class_or_interface.name] = thisPackage.getPkgImportPkgName()
        for ((className, classOrInterface) in globalSymbolTable.getPkgImportsFromImportStar(thisPackage)) {
            if (thisPackageTable.containsKey(className)) {
                throw Exception("There are two classes / interfaces with the same name in the local file scope from this package: $className")
            }
            thisPackageTable[className] = classOrInterface
            thisPackageTablePkg[className] = thisPackage.getPkgImportPkgName()
        }
    }

    fun insertImportListPackages(n: Java) {
        val javaLangPkg = PkgURI(listOf("java", "lang", "*"))
        javaLangPkg.includeStar = true
        val importList = n.pkg_import_list + javaLangPkg
        for (pkgImport in importList) {
            if (pkgImport.includeStar) {
                for ((className, classOrInterface) in globalSymbolTable.getPkgImportsFromImportStar(pkgImport)) {
                    if (importOnDemandTable.containsKey(className) &&
                        (importOnDemandTable[className] == null || importOnDemandTablePkg[className] != pkgImport.getPkgImportPkgName())) {
                        importOnDemandTable[className] = null;
                    } else {
                        importOnDemandTable[className] = classOrInterface
                        importOnDemandTablePkg[className] = pkgImport.getPkgImportPkgName()
                    }
                }
            } else {
                val className = pkgImport.getPkgImportClassName()
                if (localTypeLinkTable.containsKey(className) && localTypeLinkTablePkg[className] != pkgImport.getPkgImportPkgName()){
                    throw Exception("There are two classes / interfaces with the same name in the local file scope from single-type-import: $className")
                }
                localTypeLinkTable[className] = globalSymbolTable.getClassFromPkgImport(pkgImport)
                localTypeLinkTablePkg[className] = pkgImport.getPkgImportPkgName()
            }
        }
    }

    fun mergeTables() {
        for ((className, classOrInterface) in thisPackageTable) {
            if (!localTypeLinkTable.containsKey(className)) {
                localTypeLinkTable[className] = classOrInterface
                localTypeLinkTablePkg[className] = thisPackageTablePkg[className]!!
            }
        }
        for ((className, classOrInterface) in importOnDemandTable) {
            if (!localTypeLinkTable.containsKey(className)) {
                localTypeLinkTable[className] = classOrInterface
                localTypeLinkTablePkg[className] = importOnDemandTablePkg[className]!!
            }
        }
        if (debug){
            // println("LOCAL_TYPE_LINK_TABLE: ${localTypeLinkTable.keys}")
        }
    }
}