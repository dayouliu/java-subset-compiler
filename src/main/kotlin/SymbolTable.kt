class SymbolTable(
    val local: LocalSymbolTable,
    val global: GlobalSymbolTable,
    val debug: Boolean = false,
) {
    fun getClassFromPkgURI(pkgURI: PkgURI): ClassOrInterface {
        if (pkgURI.isSimpleName()) {
            return local.getClassFromSimpleName(pkgURI.getPkgImportClassName())
        } else {
            return global.getClassFromPkgImport(pkgURI)
        }
    }

    fun getFullNameStringFromPkgURI(pkgURI: PkgURI): String {
        if (pkgURI.isSimpleName()) {
            return local.getStringFullNameFromSimpleName(pkgURI.getPkgImportClassName())
        } else {
            return pkgURI.lst.joinToString(".")
        }
    }

    fun getFullPairKeyKeyFromPkgURI(pkgURI: PkgURI): Pair<String, String> {
        if (pkgURI.isSimpleName()) {
            return local.getPkgClassNameFromSimpleName(pkgURI.getPkgImportClassName())
        } else{
            return pkgURI.getPairKey()
        }
    }
}