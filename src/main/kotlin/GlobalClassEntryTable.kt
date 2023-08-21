class GlobalClassEntryTable(
    val globalClassEntryTable: HashMap<Pair<String, String>, ClassEntryTable> = hashMapOf(),
) {
    fun checkPackagePrefix(pkgPrefix: String): Boolean {
        for (qualifiedName in globalClassEntryTable.entries) {
            val pkgURI = qualifiedName.key.first
            if (pkgURI.startsWith(pkgPrefix)) {
                return true
            }
        }
        return false
    }

    fun addAstNodeToClassEntryTable(ast: Java, symbolTable: SymbolTable) {
        val currentClassEntryTable = ClassEntryTable()
        val parentAggregateClassEntryTable = ClassEntryTable()
        val currentClassPairKey = ast.class_or_interface.pairKey
        val classOrInterface = ast.class_or_interface
        when (classOrInterface) {
            is ClassDecl -> {
                // implements
                for (implInterface in classOrInterface.implements) {
                    val implInterfaceNode = symbolTable.getClassFromPkgURI(implInterface.pkg_uri)
                    if (implInterfaceNode is ClassDecl) {
                        throw Exception("A class must not implement a class. (JLS 8.1.4)")
                    }
                    val implPairKey = symbolTable.getFullPairKeyKeyFromPkgURI(implInterface.pkg_uri)
                    val implClassEntryTable = globalClassEntryTable[implPairKey]!!
                    parentAggregateClassEntryTable.mergeFromInterface(implClassEntryTable)
                }

                // extends
                if (classOrInterface.realExtends != null) {
                    val parentClassNode = symbolTable.getClassFromPkgURI(classOrInterface.realExtends!!.pkg_uri)
                    when (parentClassNode) {
                        is InterfaceDecl -> {
                            throw Exception("A class must not extend an interface. (JLS 8.1.3)")
                        }
                        is ClassDecl -> {
                            if (parentClassNode.modifier_list.contains(Modifier.FINAL)) {
                                throw Exception("A class must not extend a final class. (JLS 8.1.1.2, 8.1.3)")
                            }
                            parentAggregateClassEntryTable.mergeFromClass(globalClassEntryTable[parentClassNode.pairKey]!!)
                        }
                    }
                }
                currentClassEntryTable.constructClassEntryTable(
                    classOrInterface.methodList,
                    classOrInterface.fieldMap,
                    classOrInterface.constructorList,
                    classOrInterface.methodDeclList,
                    currentClassPairKey,
                )
                currentClassEntryTable.inheritFromParent(parentAggregateClassEntryTable)
                if (!classOrInterface.modifier_list.contains(Modifier.ABSTRACT)) {
                    if (currentClassEntryTable.methodDeclMap.filter { !it.value.modifier_list.contains(Modifier.NATIVE) }.isNotEmpty()) {
                        throw Exception("A class that contains (declares or inherits) any abstract methods must be abstract. (JLS 8.1.1.1)")
                    }
                }
            }
            is InterfaceDecl -> {
                for (extendNode in classOrInterface.extendList) {
                    val parentClassPairKey = symbolTable.getFullPairKeyKeyFromPkgURI(extendNode.pkg_uri)
                    val parentClassEntryTable = globalClassEntryTable[parentClassPairKey]!!
                    parentAggregateClassEntryTable.mergeFromClass(parentClassEntryTable)
                }
                val methodDeclMap: HashMap<String, MethodDecl> = HashMap<String, MethodDecl>()
                for (methodDecl in classOrInterface.methodDeclList) {
                    val key = methodDecl.getMethodSignatureKey()
                    if (methodDeclMap.contains(key)){
                        throw Exception("A class or interface must not declare two methods with the same signature (name and parameter types). (JLS 8.4, 9.4)")
                    }
                    methodDeclMap[key] = methodDecl
                }
                currentClassEntryTable.constructClassEntryTable(
                    arrayListOf(),
                    hashMapOf(),
                    arrayListOf(),
                    classOrInterface.methodDeclList,
                    currentClassPairKey,
                )
                currentClassEntryTable.extendFromParentInterface(parentAggregateClassEntryTable)
            }
        }
        globalClassEntryTable[currentClassPairKey] = currentClassEntryTable
    }
}

class ClassEntryTable(
    val methodMap: HashMap<String, Method> = hashMapOf(),
    val fieldMap: LinkedHashMap<String, Field> = linkedMapOf(),
    val constructorMap: HashMap<String, Constructor> = hashMapOf(),
    val methodDeclMap: HashMap<String, MethodDecl> = hashMapOf(),
) {

    fun constructClassEntryTable(methodList: List<Method>, newFieldMap: HashMap<String, Field>, constructorList: List<Constructor>, methodDeclList: List<MethodDecl>, currentClassPairKey: Pair<String, String>) {
        for (method in methodList) {
            val key = method.getMethodSignatureKey()
            if (methodMap.containsKey(key)) {
                throw Exception("Local Class: A class must not contain (declare or inherit) two methods with the same signature (JLS)")
            }
            methodMap[key] = method
        }
        for (methodDecl in methodDeclList) {
            val key = methodDecl.getMethodSignatureKey()
            if (methodDeclMap.containsKey(key)) {
                throw Exception("Local Class: A class must not contain (declare or inherit) two MethodDecl with the same signature (JLS)")
            }
            methodDeclMap[key] = methodDecl
        }
        for (constructor in constructorList) {
            val key = constructor.getMethodSignatureKey()
            if (constructor.name != currentClassPairKey.second) {
                throw Exception("Check that the name of a constructor is the same as the name of its enclosing class.")
            }
            if (constructorMap.containsKey(key)) {
                throw Exception("Local Class: A class must not contain (declare or inherit) two Constructor with the same signature (JLS)")
            }
            constructor.returnType = CompoundVariableType(PkgURI.fromString("${currentClassPairKey.first}.${currentClassPairKey.second}"))
            constructorMap[key] = constructor
        }
        fieldMap.putAll(newFieldMap)
    }
    fun mergeFromInterface(newInterfaceEntryTable: ClassEntryTable) {
        for ((key, methodDecl) in newInterfaceEntryTable.methodDeclMap) {
            if (methodDeclMap.containsKey(key)) {
                if (methodDecl.returnType.getFullyQualifiedName() != methodDeclMap[key]!!.returnType.getFullyQualifiedName()) {
                    throw Exception("A class or interface must not contain (declare or inherit) two methods with the same signature but different return types (JLS 8.1.1.1, 8.4, 8.4.2, 8.4.6.3, 8.4.6.4, 9.2, 9.4.1)")
                }
            }
            methodDeclMap[key] = methodDecl
        }
    }

    fun mergeFromClass(parentClassEntryTable: ClassEntryTable) {
        for ((key, parentMethodDecl) in parentClassEntryTable.methodDeclMap) {
            if (methodDeclMap.containsKey(key)) {
                val localMethodDecl = methodDeclMap[key]!!
                if (parentMethodDecl.returnType.getFullyQualifiedName() != methodDeclMap[key]!!.returnType.getFullyQualifiedName()) {
                    throw Exception("A class or interface must not contain (declare or inherit) two methods with the same signature but different return types (JLS)")
                }
                if (localMethodDecl.modifier_list.contains(Modifier.PUBLIC)) {
                    // TODO THIS IS A HACK
                    // only select higher access modifier
                    continue
                }
            }
            methodDeclMap[key] = parentMethodDecl
        }
        for ((key, method) in parentClassEntryTable.methodMap) {
            if (methodDeclMap.containsKey(key)) {
                val methodDecl = methodDeclMap[key]!!
                if (methodDecl.returnType.getFullyQualifiedName() != method.returnType.getFullyQualifiedName()
                ) {
                    throw Exception("A class or interface must not contain (declare or inherit) two methods with the same signature but different return types (JLS 8.1.1.1, 8.4, 8.4.2, 8.4.6.3, 8.4.6.4, 9.2, 9.4.1)")
                }
                if (methodDecl.modifier_list.contains(Modifier.PUBLIC) && method.modifier_list.contains(Modifier.PROTECTED)) {
                    throw Exception("A protected method must not replace a public method. (JLS 8.4.6.3)")
                }
                methodDeclMap.remove(key)
            }
            methodMap[key] = method
        }
        constructorMap.putAll(parentClassEntryTable.constructorMap)
        fieldMap.putAll(parentClassEntryTable.fieldMap)
    }

    fun inheritFromParent(parentClassEntryTable: ClassEntryTable) {
        for ((key, parentField) in parentClassEntryTable.fieldMap) {
            if (!fieldMap.containsKey(key)) {
                fieldMap[key] = parentField
            }
        }
        for ((key, parentMethodDecl) in parentClassEntryTable.methodDeclMap) {
            if (methodDeclMap.containsKey(key)) {
                val localMethodDecl = methodDeclMap[key]!!
                checkFunctionReplacability(parentMethodDecl, localMethodDecl)
            }
            methodDeclMap[key] = parentMethodDecl
        }
        for ((key, parentMethod) in parentClassEntryTable.methodMap) {
            if (methodMap.containsKey(key)) {
                // replacing method from parent
                val localMethod = methodMap[key]!!
                checkFunctionReplacability(parentMethod, localMethod)
                continue
            } else if(methodDeclMap.containsKey(key)) {
                checkFunctionReplacability(parentMethod, methodDeclMap[key]!!)
                // if I already declared a method decl with the same signature, do not inherit the method
                continue
            }
            methodMap[key] = parentMethod
        }
        for ((key, localMethod) in methodMap) {
            if (parentClassEntryTable.methodDeclMap.containsKey(key)) {
                // replacing method_decl from parent
                val parentMethodDecl = parentClassEntryTable.methodDeclMap[key]!!
                checkFunctionReplacability(parentMethodDecl, localMethod)
                methodDeclMap.remove(key)
            }
        }
    }

    fun extendFromParentInterface(parentClassEntryTable: ClassEntryTable) {
        // this is specifically for an edge case where Object has a final method that is being replace by a interface method decl
        for ((key, parentMethod) in parentClassEntryTable.methodMap) {
            if (methodDeclMap.containsKey(key)) {
                val localMethodDecl = methodDeclMap[key]!!
                // replacing method from parent
                checkFunctionReplacability(parentMethod, localMethodDecl)
            }
        }
        methodDeclMap.putAll(parentClassEntryTable.methodDeclMap.filterKeys { !methodDeclMap.containsKey(it) })
    }

    fun checkFunctionReplacability(originalMethod: MethodLike, newMethod: MethodLike) {
        if (originalMethod.modifier_list.contains(Modifier.FINAL)) {
            throw Exception("A method must not replace a final method. (JLS 8.4.3.3)")
        }
        if (originalMethod.returnType.getFullyQualifiedName() != newMethod.returnType.getFullyQualifiedName()) {
            throw Exception("A class or interface must not contain (declare or inherit) two methods with the same signature but different return types (JLS 8.1.1.1, 8.4, 8.4.2, 8.4.6.3, 8.4.6.4, 9.2, 9.4.1)")
        }
        if (originalMethod.modifier_list.contains(Modifier.STATIC) && !newMethod.modifier_list.contains(
                Modifier.STATIC
            )
        ) {
            throw Exception("A nonstatic method must not replace a static method. (JLS 8.4.6.1)")
        }
        if (!originalMethod.modifier_list.contains(Modifier.STATIC) && newMethod.modifier_list.contains(
                Modifier.STATIC
            )
        ) {
            throw Exception("A static method must not replace a nonstatic method. (JLS 8.4.6.2)")
        }
        if (originalMethod.modifier_list.contains(Modifier.PUBLIC) && newMethod.modifier_list.contains(
                Modifier.PROTECTED
            )
        ) {
            throw Exception("A protected method must not replace a public method. (JLS 8.4.6.3)")
        }
    }
}