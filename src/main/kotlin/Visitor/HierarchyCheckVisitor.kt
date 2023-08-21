class HierarchyCheckVisitor(
    val globalSymbolTable: GlobalSymbolTable,
    val localSymbolTable: LocalSymbolTable,
    val debug: Boolean = false,
) : Visitor() {

    fun checkMethodDuplication(methodList: List<MethodLike>) {
        val methodSet = HashSet<String>()
        for (method in methodList) {
            val key = method.getMethodSignatureKey()
            if (methodSet.contains(key)) {
                throw Exception("Method duplication: $key")
            }
        }
    }

    override fun visit(n: ClassDecl) {

        val superMethodMap: HashMap<String, Method> = hashMapOf()
        val superMethodDeclMap: HashMap<String, MethodDecl> = hashMapOf()
        val superConstructorMap: HashMap<String, Constructor> = hashMapOf()
        val localMethodMap: HashMap<String, Method> = hashMapOf()
        val localMethodDeclMap: HashMap<String, MethodDecl> = hashMapOf()
        val localConstructorMap: HashMap<String, Constructor> = hashMapOf()
        val totalMethodMap: HashMap<String, Method> = hashMapOf()
        val totalMethodDeclMap: HashMap<String, MethodDecl> = hashMapOf()
        val totalConstructorMap: HashMap<String, Constructor> = hashMapOf()

        // Implements
        val implSet = HashSet<String>()
        for (implClass in n.implements) {
            var implClassNode : Node
            if (implClass.pkg_uri.isSimpleName()) {
                val fullName = localSymbolTable.getStringFullNameFromSimpleName(implClass.pkg_uri.getPkgImportClassName())
                if (implSet.contains(fullName)) {
                    throw Exception("An interface must not be repeated in an implements clause or in an extends clause of an interface. (JLS 8.1.4)")
                }
                implSet.add(fullName)
                implClassNode = localSymbolTable.getClassFromSimpleName(implClass.pkg_uri.getPkgImportClassName())
            } else {
                val fullName = implClass.pkg_uri.lst.joinToString(".")
                if (implSet.contains(fullName)) {
                    throw Exception("An interface must not be repeated in an implements clause or in an extends clause of an interface. (JLS 8.1.4)")
                }
                implSet.add(fullName)
                implClassNode = globalSymbolTable.getClassFromPkgImport(implClass.pkg_uri)
            }
            when (implClassNode) {
                is ClassDecl -> {
                    throw Exception("A class must not implement a class. (JLS 8.1.4)")
                }
                is InterfaceDecl -> {
                    for (methodDecl in implClassNode.methodDeclList) {
                        val key = methodDecl.getMethodSignatureKey()
                        if (superMethodDeclMap.containsKey(key)){
                            if (methodDecl.returnType?.getFullyQualifiedName() != superMethodDeclMap[key]!!.returnType?.getFullyQualifiedName()){
                                throw Exception("A class or interface must not contain (declare or inherit) two methods with the same signature but different return types (JLS 8.1.1.1, 8.4, 8.4.2, 8.4.6.3, 8.4.6.4, 9.2, 9.4.1)")
                            }
                        }
                        superMethodDeclMap[key] = methodDecl
                    }
                }
            }
        }

        // Extends
        if (n.realExtends != null ){
            val parentName =  n.realExtends!!.pkg_uri.getPkgImportClassName()
            val extNode = if (n.realExtends!!.pkg_uri.isSimpleName()) {
                localSymbolTable.getClassFromSimpleName(parentName)
            } else {
                globalSymbolTable.getClassFromPkgImport(n.realExtends!!.pkg_uri)
            }

            when (extNode) {
                is InterfaceDecl -> {
                    throw Exception("A class must not extend an interface. (JLS 8.1.3)")
                }

                is ClassDecl -> {
                    if (extNode.modifier_list.contains(Modifier.FINAL)) {
                        throw Exception("A class must not extend a final class. (JLS 8.1.1.2, 8.1.3)")
                    }
                    for (method in extNode.methodList) {
                        val key = method.getMethodSignatureKey()
                        if (superMethodMap.containsKey(key)) {
                            throw Exception("SuperClass: A class must not contain (declare or inherit) two methods with the same signature (JLS)")
                        }
                        superMethodMap[key] = method
                    }
                    for (method in extNode.methodDeclList) {
                        val key = method.getMethodSignatureKey()
                        if (superMethodDeclMap.containsKey(key)) {
                            throw Exception("SuperClass: A class must not contain (declare or inherit) two method_decl with the same signature (JLS)")
                        }
                        superMethodDeclMap[key] = method
                    }
                    for (constructor in extNode.constructorList) {
                        val key = constructor.getMethodSignatureKey()
                        if (superConstructorMap.containsKey(key)) {
                            throw Exception("SuperClass: A class must not contain (declare or inherit) two constructor with the same signature (JLS)")
                        }
                        superConstructorMap[key] = constructor
                    }
                }
            }
            val pkgClassName = localSymbolTable.getPkgClassNameFromSimpleName(n.name)
            val parPkgClassName = if (n.realExtends!!.pkg_uri.isSimpleName()) {
                localSymbolTable.getPkgClassNameFromSimpleName(parentName)
            } else {
                n.realExtends!!.pkg_uri.getPairKey()
            }
            globalSymbolTable.parentClassTable[pkgClassName] = parPkgClassName
        } else {
            val pkgClassName = localSymbolTable.getPkgClassNameFromSimpleName(n.name)
            globalSymbolTable.parentClassTable[pkgClassName] = null
        }

        for (method in n.methodList) {
            val key = method.getMethodSignatureKey()
            if (localMethodMap.containsKey(key)) {
                throw Exception("Local Class: A class must not contain (declare or inherit) two methods with the same signature (JLS)")
            }
            localMethodMap[key] = method
        }
        for (methodDecl in n.methodDeclList) {
            val key = methodDecl.getMethodSignatureKey()
            if (localMethodDeclMap.containsKey(key)) {
                throw Exception("Local Class: A class must not contain (declare or inherit) two MethodDecl with the same signature (JLS)")
            }
            localMethodDeclMap[key] = methodDecl
        }
        for (constructor in n.constructorList) {
            val key = constructor.getMethodSignatureKey()
            if (localConstructorMap.containsKey(key)) {
                throw Exception("Local Class: A class must not contain (declare or inherit) two Constructor with the same signature (JLS)")
            }
            localConstructorMap[key] = constructor
        }

        totalMethodDeclMap.putAll(superMethodDeclMap)
        for ((key, method) in superMethodMap) {
            if (superMethodDeclMap.containsKey(key)) {
                val superMethodDecl = superMethodDeclMap[key]!!
                if (superMethodDecl.returnType?.getFullyQualifiedName() != method.returnType?.getFullyQualifiedName()) {
                    throw Exception("A class or interface must not contain (declare or inherit) two methods with the same signature but different return types (JLS 8.1.1.1, 8.4, 8.4.2, 8.4.6.3, 8.4.6.4, 9.2, 9.4.1)")
                }
                if (superMethodDecl.modifier_list.contains(Modifier.PUBLIC) && method.modifier_list.contains(Modifier.PROTECTED)) {
                    throw Exception("A protected method must not replace a public method. (JLS 8.4.6.3)")
                }
                totalMethodDeclMap.remove(key)
            }
            totalMethodMap[key] = method
        }
        totalConstructorMap.putAll(localConstructorMap)

        //Methods Manage Inherit Methods
        for ((key, method) in localMethodMap) {
            if (superMethodMap.containsKey(key)) {
                val superMethod = superMethodMap[key]!!
                if (superMethod.modifier_list.contains(Modifier.FINAL)) {
                    throw Exception("A method must not replace a final method. (JLS 8.4.3.3)")
                }
                if (superMethod.returnType?.getFullyQualifiedName() != method.returnType?.getFullyQualifiedName()) {
                    throw Exception("A class or interface must not contain (declare or inherit) two methods with the same signature but different return types (JLS 8.1.1.1, 8.4, 8.4.2, 8.4.6.3, 8.4.6.4, 9.2, 9.4.1)")
                }
                if (superMethod.modifier_list.contains(Modifier.STATIC) && !method.modifier_list.contains(Modifier.STATIC)) {
                    throw Exception("A nonstatic method must not replace a static method. (JLS 8.4.6.1)")
                }
                if (!superMethod.modifier_list.contains(Modifier.STATIC) && method.modifier_list.contains(Modifier.STATIC)) {
                    throw Exception("A static method must not replace a nonstatic method. (JLS 8.4.6.2)")
                }
                if (superMethod.modifier_list.contains(Modifier.PUBLIC) && method.modifier_list.contains(Modifier.PROTECTED)) {
                    throw Exception("A protected method must not replace a public method. (JLS 8.4.6.3)")
                }
                // Override Inherited Super Method
            }
            if (superMethodDeclMap.containsKey(key)) {
                val superMethodDecl = superMethodDeclMap[key]!!
                if (superMethodDecl.returnType?.getFullyQualifiedName() != method.returnType?.getFullyQualifiedName()) {
                    throw Exception("A class or interface must not contain (declare or inherit) two methods with the same signature but different return types (JLS 8.1.1.1, 8.4, 8.4.2, 8.4.6.3, 8.4.6.4, 9.2, 9.4.1)")
                }
                totalMethodDeclMap.remove(key)
            }
            totalMethodMap[key] = method
        }

        for ((key, methodDecl) in localMethodDeclMap) {
            if (superMethodDeclMap.containsKey(key)) {
                val superMethodDecl = superMethodDeclMap[key]!!
                if (superMethodDecl.returnType?.getFullyQualifiedName() != methodDecl.returnType?.getFullyQualifiedName()) {
                    throw Exception("A class or interface must not contain (declare or inherit) two methods with the same signature but different return types (JLS 8.1.1.1, 8.4, 8.4.2, 8.4.6.3, 8.4.6.4, 9.2, 9.4.1)")
                }
                if (superMethodDecl.modifier_list.contains(Modifier.PUBLIC) && methodDecl.modifier_list.contains(Modifier.PROTECTED)) {
                    throw Exception("A protected method must not replace a public method. (JLS 8.4.6.3)")
                }
            }
            totalMethodDeclMap[key] = methodDecl
        }

        if (!n.modifier_list.contains(Modifier.ABSTRACT)) {
            if (debug) {
                println("Total Methods: $totalMethodMap")
            }
            if (totalMethodDeclMap.filter { !it.value.modifier_list.contains(Modifier.NATIVE) }.isNotEmpty()) {
                println("Offending Class: $n")
                println("Total Methods: ${totalMethodDeclMap.keys}")
                println("Methods: ${n.methodList.map{it.getMethodSignatureKey() }}")
                throw Exception("A class that contains (declares or inherits) any abstract methods must be abstract. (JLS 8.1.1.1)")
            }
        }
    }
    override fun visit(n: InterfaceDecl) {
        val pkgClassName = localSymbolTable.getPkgClassNameFromSimpleName(n.name)
        globalSymbolTable.parentClassTable[pkgClassName] = null
        for (extend in n.extendList) {
            val parentName = extend.pkg_uri.getPkgImportClassName();
            val extNode = localSymbolTable.getClassFromSimpleName(parentName)
            when (extNode) {
                is ClassDecl -> {
//                    throw Exception("An interface must not extend a class. (JLS 9.1.2): $extNode")
                }
            }
            val parPkgClassName = localSymbolTable.getPkgClassNameFromSimpleName(parentName)
            globalSymbolTable.parentClassTable[pkgClassName] = parPkgClassName
        }
    }
}