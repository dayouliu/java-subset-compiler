fun isEqualToPrimitive(type: VariableType, primitive: Primitive): Boolean {
    return type is PrimitiveType && type.primitive == primitive
}
val stringType = "java.lang.String"

class TypeCheckVisitor(
    val symbolTableVisitor: SymbolTableVisitor,
    val globalClassEntryTable: GlobalClassEntryTable,
    val astAndLocalTableMap: HashMap<Pair<String, String>, Pair<Java, LocalSymbolTable>>,
    val classInheritanceGraph: HashMap<Pair<String, String>, ArrayList<Pair<String, String>>>
) : Visitor() {
    companion object {
        fun inheritsFrom(child: Pair<String, String>, ancestor: Pair<String, String>, classInheritanceGraph: HashMap<Pair<String, String>, ArrayList<Pair<String, String>>>): Boolean {
            if (child == ancestor) return true
            val parents = classInheritanceGraph[child] ?: return false
            for (parent in parents) {
                if (inheritsFrom(parent, ancestor, classInheritanceGraph)) {
                    return true
                }
            }
            return false
        }
    }

    fun isStringType(type: VariableType): Boolean {
        return when(type) {
            is PrimitiveType -> false
            is CompoundVariableType -> {
                type.getFullyQualifiedName() == stringType
            }
            is ArrayType -> false
            else -> throw Exception("Invalid variable type")
        }
    }

    fun isInStaticContext(symbolTableVisitor: SymbolTableVisitor): Boolean {
        val isInStaticFieldContext = symbolTableVisitor.curField?.modifier_list?.contains(Modifier.STATIC) ?: false
        val isInStaticMethodContext = symbolTableVisitor.curMethod?.modifier_list?.contains(Modifier.STATIC) ?: false
        return isInStaticFieldContext || isInStaticMethodContext
    }

    fun inheritsFrom(child: Pair<String, String>, ancestor: Pair<String, String>): Boolean {
        if (child == ancestor) return true
        val parents = classInheritanceGraph[child] ?: return false
        for (parent in parents) {
            if (inheritsFrom(parent, ancestor)) {
                return true
            }
        }
        return false
    }

    private fun canImplicitlyCast(currentType: VariableType, desiredType: VariableType, canWiden: Boolean = true): Boolean {
        return when(desiredType) {
            is PrimitiveType -> {
                if (currentType is PrimitiveType) {
                    (currentType.primitive == desiredType.primitive) ||
                    (canWiden &&
                        ((currentType.primitive == Primitive.BYTE && desiredType.primitive == Primitive.SHORT) ||
                        (currentType.isIntegral() && desiredType.primitive == Primitive.INT)))
                } else {
                    false
                }
            }
            is CompoundVariableType -> {
                if (isEqualToPrimitive(currentType, Primitive.NULL)) {
                    true
                } else if (currentType is CompoundVariableType) {
                    val currentPkgURI = PkgURI.fromString(currentType.getFullyQualifiedName())
                    val currentPairKey = currentPkgURI.getPairKey()
                    val desiredPkgURI = PkgURI.fromString(desiredType.getFullyQualifiedName())
                    val desiredPairKey = desiredPkgURI.getPairKey()
                    inheritsFrom(currentPairKey, desiredPairKey)
                } else if (currentType is ArrayType && desiredType.getFullyQualifiedName() in arrayOf("java.lang.Object", "java.lang.Cloneable", "java.io.Serializable")) {
                    true
                } else {
                    throw Exception("Non-compound non-null variable type cannot be implicitly cast to compound variable type")
                }
            }
            is ArrayType -> {
                if (currentType is PrimitiveType && currentType.primitive == Primitive.NULL) {
                    true
                } else if (currentType is ArrayType) {
                    canImplicitlyCast(currentType.variableType, desiredType.variableType, false)
                } else if (currentType.getFullyQualifiedName() in arrayOf("java.lang.Object", "java.lang.Cloneable", "java.io.Serializable")) {
                    false
                } else {
                    throw Exception("Non-array non-null type cannot be implicitly cast to array type")
                }
            }
            else -> throw Exception("Invalid variable type")
        }
    }

    private fun canExplicitlyCast(currentType: VariableType, desiredType: VariableType): Boolean {
        if (canImplicitlyCast(currentType, desiredType)) return true

        return when(desiredType) {
            is PrimitiveType -> {
                (currentType is PrimitiveType && currentType.isIntegral() && desiredType.isIntegral()) ||
                (desiredType.primitive == Primitive.NULL && currentType is CompoundVariableType) ||
                (desiredType.primitive == Primitive.NULL && currentType is ArrayType)
            }
            is CompoundVariableType -> {
                if (currentType is CompoundVariableType) {
                    val currentPkgURI = PkgURI.fromString(currentType.getFullyQualifiedName())
                    val currentPairKey = currentPkgURI.getPairKey()
                    val desiredPkgURI = PkgURI.fromString(desiredType.getFullyQualifiedName())
                    val desiredPairKey = desiredPkgURI.getPairKey()
                    inheritsFrom(desiredPairKey, currentPairKey)
                } else {
                    throw Exception("Current type should be a CompoundVariableType if canImplicitlyCast() returned false")
                }
            }
            is ArrayType -> {
                (currentType.getFullyQualifiedName() in arrayOf("java.lang.Object", "java.lang.Cloneable", "java.io.Serializable")) ||
                (currentType is ArrayType && canExplicitlyCast(currentType.variableType, desiredType.variableType))
            }
            else -> throw Exception("Invalid variable type")
        }
    }
    override fun visit(n: ParenWrappedExpr) {
        n.type = n.expr.type
        if (n.expr.disambigTag == DisambigNameTag.TYPE) {
            n.disambigTag = DisambigNameTag.PAREN_WRAPPED_TYPE
        }
    }

    override fun visit(n: VariableAccess) {
        val id = n.variableName

        // local variable
        val localId = symbolTableVisitor.lookupLocalSymbol(id)
        if (localId != null) {
            n.disambigTag = DisambigNameTag.EXPR
            val type = when (localId) {
                is Parameter -> localId.variable_type
                is VariableDecl -> localId.variableType
                else -> throw SymTableException("local symbol node must be Parameter or VariableDecl")
            }
            n.type = ExprType(type, true)
            return
        }

        val curClass = symbolTableVisitor.curClass!!.pairKey

        // field
        val fieldMap = globalClassEntryTable.globalClassEntryTable[curClass]!!.fieldMap
        if (fieldMap.containsKey(id)) {
            n.disambigTag = DisambigNameTag.EXPR
            n.type = ExprType(fieldMap[id]!!.variable_type, true)

            // forward reference
            if (symbolTableVisitor.curField != null && !n.lhsFieldRef && !symbolTableVisitor.declaredFields.contains(id)) {
                throw Exception("forward reference of field not allowed for: ${n.variableName}")
            }
            if (!fieldMap[id]!!.modifier_list.contains(Modifier.STATIC) && isInStaticContext(symbolTableVisitor)) {
                throw Exception("Cannot access non-static field ${n.variableName} in static context")
            }
            return
        }

        // class call
        val localSymbolTable = astAndLocalTableMap[curClass]!!.second
        val isClass = localSymbolTable.localTypeLinkTable.containsKey(id)
        if (isClass) {
            n.disambigTag = DisambigNameTag.TYPE

            val fullyQualifiedName = localSymbolTable.getStringFullNameFromSimpleName(id)
            val type = CompoundVariableType(PkgURI(listOf(id)))
            type.fullyQualifiedNameVar = fullyQualifiedName
            n.type = ExprType(type, false)
            return
        }

        // package
        if (globalClassEntryTable.checkPackagePrefix(id)) {
            n.disambigTag = DisambigNameTag.PKG
            return
        }

        throw Exception("Cannot disambiguate variable access: ${n.exprToPkgURIList()} ${n.variableName}")
    }

    override fun visit(n: FieldAccess) {
        val id = n.fieldName
        when(n.objectExpr.disambigTag) {
            DisambigNameTag.PKG -> {
                val pkg = n.objectExpr.exprToPkgURIList()
                val prevPkgURI = pkg.joinToString(separator = ".")
                val qualifiedNameKey = Pair(prevPkgURI, id)
                if (globalClassEntryTable.globalClassEntryTable.containsKey(qualifiedNameKey)) {
                    n.disambigTag = DisambigNameTag.TYPE
                    val type = CompoundVariableType.fromFullyQualifiedName("$prevPkgURI.$id")
                    n.type = ExprType(type, false)
                } else if (globalClassEntryTable.checkPackagePrefix("$prevPkgURI.$id")) {
                    n.disambigTag = DisambigNameTag.PKG
                } else {
                    throw Exception("Cannot disambiguate field access: $prevPkgURI.$id")
                }
            }
            DisambigNameTag.TYPE -> {
                val prevPkgURITokens = n.objectExpr.exprToPkgURIList()
                val prevPkgURI = prevPkgURITokens.joinToString(separator = ".")
                if (prevPkgURITokens.size == 1) {
                    val curClass = symbolTableVisitor.curClass!!.pairKey
                    val localSymbolTable = astAndLocalTableMap[curClass]!!.second
                    val pairKey = localSymbolTable.localTypeLinkTable[prevPkgURI]!!.pairKey
                    val fieldMap = globalClassEntryTable.globalClassEntryTable[pairKey]!!.fieldMap
                    if (fieldMap.containsKey(id)) {
//                        if (isInStaticContext(symTableVisitor) && !fieldMap[id]!!.modifier_list.contains(Modifier.STATIC)) {
//                            throw Exception("Cannot access non-static field ${n.fieldName} in static context")
//                        }
                        n.disambigTag = DisambigNameTag.EXPR
                    } else {
                        throw Exception("Cannot disambiguate field access: $prevPkgURI.$id")
                    }
                } else if (globalClassEntryTable.globalClassEntryTable[n.objectExpr.toPairKey()]!!.fieldMap.containsKey(id)) {
//                    if (isInStaticContext(symTableVisitor) && !globalClassEntryTable.globalClassEntryTable[n.objectExpr.toPairKey()]!!.fieldMap[id]!!.modifier_list.contains(Modifier.STATIC)) {
//                        throw Exception("Cannot access non-static field ${n.fieldName} in static context")
//                    }
                    n.disambigTag = DisambigNameTag.EXPR
                } else {
                    throw Exception("Cannot disambiguate field access: $prevPkgURI.$id")
                }
            }
            DisambigNameTag.PAREN_WRAPPED_TYPE -> {
                throw Exception("Dots not allowed on parenthesized types: $id")
            }
            else -> {}
        }
        if (n.objectExpr.disambigTag != DisambigNameTag.PKG) {
            val leftType = n.objectExpr.type!!
            when(leftType.type) {
                is CompoundVariableType -> {
                    val objExprPkgURI = PkgURI.fromString(leftType.type.getFullyQualifiedName())
                    val objExprPairKey = objExprPkgURI.getPairKey()
                    n.objectExprPairKey = objExprPairKey
                    val objExprClassFields = globalClassEntryTable.globalClassEntryTable[objExprPairKey]!!.fieldMap
                    if (isInStaticContext(symbolTableVisitor) && n.objectExpr is This) {
                        throw Exception("Cannot access this in static context")
                    }
                    if (objExprClassFields.containsKey(id)) {
                        val field = objExprClassFields[id]!!
                        // if object class is not in the same package as the current class
                        if (objExprPairKey.first != symbolTableVisitor.curClass!!.pairKey.first) {
                            if (inheritsFrom(objExprPairKey, symbolTableVisitor.curClass!!.pairKey)){
                                val curClassFields = globalClassEntryTable.globalClassEntryTable[symbolTableVisitor.curClass!!.pairKey]!!.fieldMap
                                if (!curClassFields.containsKey(id)) {
                                    throw Exception("Cannot access private field of a class from a child class")
                                }
                            } else if (!field.modifier_list.contains(Modifier.PUBLIC)) {
                                throw Exception("Cannot access non-public field of a class from a different package")
                            }
                        }
                        if (!leftType.isInstantiation) {
                            if (!field.modifier_list.contains(Modifier.STATIC)) {
                                throw Exception("Non-instantiated class field access must be static field access")
                            }
                        }  else {
                            if (field.modifier_list.contains(Modifier.STATIC)) {
                                throw Exception("Instantiated class method access cannot be static field access")
                            }
                        }
//                        if (isInStaticContext(symTableVisitor) && !field.modifier_list.contains(Modifier.STATIC)) {
//                            throw Exception("Cannot access non-static field ${n.fieldName} in static context")
//                        }
                        n.type = ExprType(field.variable_type)
                    } else {
                        throw Exception("Field name $id not found in $objExprPairKey")
                    }
                }
                is ArrayType -> {
                    if (id == "length") {
                        n.type = ExprType(PrimitiveType(Primitive.INT))
                    } else {
                        throw Exception("Only length field supported for array types")
                    }
                }
                else -> throw Exception("Left side of field access must be CompoundVariableType or ArrayType type")
            }
        }
    }


    override fun visit(n: MethodCall) {
        if (n.objectExpr.disambigTag == DisambigNameTag.PKG) {
            throw Exception("Left side of method call cannot have disambiguation tag PKG")
        } else if(n.objectExpr.disambigTag == DisambigNameTag.PAREN_WRAPPED_TYPE) {
            throw Exception("Dots not allowed on parenthesized types: ${n.methodName}")
        } else {
            val id = n.methodName
            val leftType = n.objectExpr.type!!
            if (isInStaticContext(symbolTableVisitor) && n.objectExpr is This) {
                throw Exception("Cannot access this in static context")
            }
            when(leftType.type) {
                is CompoundVariableType -> {
                    val objExprPkgURI = PkgURI.fromString(leftType.type.getFullyQualifiedName())
                    val objExprPairKey = objExprPkgURI.getPairKey()
                    val methods = globalClassEntryTable.globalClassEntryTable[objExprPairKey]!!.methodMap
                    val methodDecls = globalClassEntryTable.globalClassEntryTable[objExprPairKey]!!.methodDeclMap
                    n.objectExprPairKey = objExprPairKey
                    val methodSignatureKey = "${id}_${
                        n.argsList.joinToString("_") {
                            if (!it.type!!.isInstantiation) {
                                throw Exception("Method call argument type must be instantiated")
                            }
                            it.type!!.type.getFullyQualifiedName()
                        }
                    }"
                    val method = when {
                        methods.containsKey(methodSignatureKey) -> methods[methodSignatureKey]!!
                        methodDecls.containsKey(methodSignatureKey) -> methodDecls[methodSignatureKey]!!
                        else -> throw Exception("Method call with method signature key $methodSignatureKey not found in methods and methodDecls of $objExprPairKey")
                    }
                    n.method = method
                    if (objExprPairKey.first != symbolTableVisitor.curClass!!.pairKey.first) {
                        if (inheritsFrom(objExprPairKey, symbolTableVisitor.curClass!!.pairKey)){
                            val curClassMethods = globalClassEntryTable.globalClassEntryTable[symbolTableVisitor.curClass!!.pairKey]!!.methodMap
                            if (!curClassMethods.containsKey(methodSignatureKey)) {
                                throw Exception("Cannot access private method of a class from a child class")
                            }
                        } else if (!method.modifier_list.contains(Modifier.PUBLIC) && !method.modifier_list.contains(Modifier.STATIC)) {
                            throw Exception("Cannot access non-public method of a class from a different package")
                        }
                    }
                    if (!leftType.isInstantiation) {
                        if (!method.modifier_list.contains(Modifier.STATIC)) {
                            throw Exception("Non-instantiated class method access must be static field access")
                        }
                    } else {
                        if (method.modifier_list.contains(Modifier.STATIC)) {
                            throw Exception("Instantiated class method access cannot be static field access")
                        }
                    }
//                    if (isInStaticContext(symTableVisitor) && !method.modifier_list.contains(Modifier.STATIC)) {
//                        throw Exception("Cannot access non-static method ${n.methodName} in static context")
//                    }
                    n.type = ExprType(method.returnType)
                }
                else -> throw Exception("Left size of method call must be CompoundVariableType type")
            }
        }
    }

    override fun visit(n: ArrayAccess) {
        val leftType = n.arrayExpr.type!!
        when (leftType.type) {
            is ArrayType -> n.type = ExprType(leftType.type.variableType)
            else -> throw Exception("Array access must be on ArrayType")
        }
        val sizeType = n.arrayIndex.type!!.type
        if (sizeType !is PrimitiveType) {
            throw Exception("Array access index must be a PrimitiveType")
        }
    }

    override fun visit(n: IntLiteral) {
        n.type = ExprType(PrimitiveType(Primitive.INT))
    }

    override fun visit(n: StringLiteral) {
        n.type = ExprType(CompoundVariableType.fromFullyQualifiedName(stringType))
    }

    override fun visit(n: CharLiteral) {
        n.type = ExprType(PrimitiveType(Primitive.CHAR))
    }

    override fun visit(n: BoolLiteral) {
        n.type = ExprType(PrimitiveType(Primitive.BOOLEAN))
    }

    override fun visit(n: NullLiteral) {
        n.type = ExprType(PrimitiveType(Primitive.NULL))
    }

    override fun visit(n: This) {
        val pairKey = symbolTableVisitor.curClass!!.pairKey
        val thisType = CompoundVariableType(PkgURI(listOf(pairKey.second)))
        thisType.fullyQualifiedNameVar = "${pairKey.first}.${pairKey.second}"
        n.type = ExprType(thisType)
    }

    override fun visit(n: NewArrayExpr) {
        val leftType = when {
            n.primitiveType != null -> n.primitiveType
            n.classType != null -> n.classType
            else -> throw Exception("New array expr must be PrimitiveType or CompoundVariableType")
        }
        n.type = ExprType(ArrayType(leftType))
        val sizeType = n.size.type!!.type
        if (sizeType !is PrimitiveType || sizeType.primitive == Primitive.NULL) {
            throw Exception("New array size must be a PrimitiveType")
        }
    }

    override fun visit(n: NewObjectExpr) {
        val objExprPkgURI = PkgURI.fromString(n.classType.getFullyQualifiedName())
        val objExprPairKey = objExprPkgURI.getPairKey()
        val constructors = globalClassEntryTable.globalClassEntryTable[objExprPairKey]!!.constructorMap
        when (val objExprClass = (astAndLocalTableMap[objExprPairKey]!!.second.globalSymbolTable.table[objExprPairKey]!!)) {
            is ClassDecl -> {
                if (objExprClass.modifier_list.contains(Modifier.ABSTRACT)) {
                    throw Exception("The type in a class instance creation expression must be a non-abstract class.")
                }
            }
            is InterfaceDecl -> throw Exception("The type in a class instance creation expression must be a non-abstract class.")
            else -> throw Exception("The type in a class instance creation expression must be a non-abstract class.")
        }

        val methodSignatureKey = "${n.classType.pkg_uri.lst.last()}_${
            n.argsList.joinToString("_") {
                if (!it.type!!.isInstantiation) {
                    throw Exception("Method call argument type must be instantiated")
                }
                it.type!!.type.getFullyQualifiedName()
            }
        }"
        n.methodSignatureKey = methodSignatureKey
        val constructor = when {
            constructors.containsKey(methodSignatureKey) -> constructors[methodSignatureKey]!!
            else -> throw Exception("New object creation with method signature key $methodSignatureKey not found in constructors of $objExprPairKey")
        }
        if (objExprPairKey.first != symbolTableVisitor.curClass!!.pairKey.first) {
            if (!constructor.modifier_list.contains(Modifier.PUBLIC)) {
                throw Exception("Cannot access non-public constructor of a class from a different package")
            }
        }
        n.type = ExprType(n.classType)
    }

    override fun visit(n: BinaryExpr) {
        val leftType = n.left.type!!.type
        val rightType = n.right.type!!.type
        when (n.op) {
            ArithmeticOperator.PLUS -> {
                if (leftType is PrimitiveType && rightType is PrimitiveType && leftType.isIntegral() && rightType.isIntegral()) {
                    n.type = ExprType(PrimitiveType(Primitive.INT))
                } else if ((isStringType(leftType) || isStringType(rightType)) && !(isEqualToPrimitive(leftType, Primitive.VOID) || isEqualToPrimitive(rightType, Primitive.VOID))) {
                    n.type = ExprType(CompoundVariableType.fromFullyQualifiedName(stringType))
                } else {
                    throw Exception("Operation must be performed on integral or string types")
                }
            }
            ArithmeticOperator.MINUS,
            ArithmeticOperator.STAR,
            ArithmeticOperator.DIVIDE,
            ArithmeticOperator.MODULO -> {
                if (leftType is PrimitiveType && rightType is PrimitiveType && leftType.isIntegral() && rightType.isIntegral()) {
                    n.type = ExprType(PrimitiveType(Primitive.INT))
                } else {
                    throw Exception("Operation must be performed on integral types")
                }
            }
            ArithmeticOperator.DOUBLE_EQUALS -> {
                if (isEqualToPrimitive(leftType, Primitive.VOID) || isEqualToPrimitive(rightType, Primitive.VOID)) {
                    throw Exception("Equality operation cannot be performed on void type")
                } else if (canExplicitlyCast(leftType, rightType)) {
                    n.type = ExprType(PrimitiveType(Primitive.BOOLEAN))
                } else {
                    throw Exception("Operation must be performed on explicitly castable types")
                }
            }
            ArithmeticOperator.NOT_EQUAL -> {
                if (canExplicitlyCast(leftType, rightType)) {
                    n.type = ExprType(PrimitiveType(Primitive.BOOLEAN))
                } else {
                    throw Exception("Operation must be performed on explicitly castable types")
                }
            }
            ArithmeticOperator.LESS_THAN_OR_EQUAL,
            ArithmeticOperator.GREATER_THAN_OR_EQUAL,
            ArithmeticOperator.LESS_THAN,
            ArithmeticOperator.GREATER_THAN -> {
                if (leftType is PrimitiveType && rightType is PrimitiveType && leftType.isIntegral() && rightType.isIntegral()) {
                    n.type = ExprType(PrimitiveType(Primitive.BOOLEAN))
                } else {
                    throw Exception("Operation must be performed on integral types")
                }
            }
            ArithmeticOperator.AND,
            ArithmeticOperator.OR -> {
                if (leftType is PrimitiveType && rightType is PrimitiveType && leftType.isBoolean() && rightType.isBoolean()) {
                    n.type = ExprType(PrimitiveType(Primitive.BOOLEAN))
                } else {
                    throw Exception("Operation must be performed on boolean types")
                }
            }
        }
    }

    override fun visit(n: InstanceofExpr) {
        val currentType = n.expr.type!!.type
        if (n.varType !is CompoundVariableType && n.varType !is ArrayType) {
            throw Exception("${n.varType} must be a CompoundVariableType")
        } else if (!canExplicitlyCast(currentType, n.varType)) {
            throw Exception("$currentType cannot be explicitly cast to ${n.varType} in instanceof")
        }
        n.type = ExprType(PrimitiveType(Primitive.BOOLEAN))
    }

    override fun visit(n: UnaryExpr) {
        val exprType = n.expr.type!!.type
        when (n.unaryOperator) {
            UnaryOperator.MINUS -> {
                if (!(exprType as PrimitiveType).isIntegral()) {
                    throw Exception("Operation must be performed on integral types")
                }
            }
            UnaryOperator.NOT -> {
                if (!(exprType as PrimitiveType).isBoolean()) {
                    throw Exception("Operation must be performed on boolean types")
                }
            }
        }
        n.type = n.expr.type
    }

    override fun visit(n: VariableAssignment) {
        val lhsType = n.lhs.type!!.type
        val valueType = n.value.type!!.type
        if (!canImplicitlyCast(valueType, lhsType)) {
            throw Exception("Value type $valueType cannot be implicitly cast to lhs type $lhsType in variable assignment")
        }
        n.type = n.lhs.type
    }

    override fun visit(n: PrimitiveCastExpr) {
        val exprType = n.expr.type!!.type
        if (!canExplicitlyCast(exprType, PrimitiveType(n.primitiveType))) {
            throw Exception("Cannot explicitly cast from $exprType to ${n.primitiveType}")
        }
        n.type = ExprType(PrimitiveType(n.primitiveType))
    }

    override fun visit(n: ArrayCastExpr) {
        val exprType = n.expr.type!!.type
        if (!canExplicitlyCast(exprType, n.arrayType)) {
            throw Exception("Cannot explicitly cast from $exprType to ${n.arrayType}")
        }
        n.type = ExprType(n.arrayType)
    }

    override fun visit(n: RefCastExpr) {
        val exprType = n.expr.type!!.type
        if (!canExplicitlyCast(exprType, n.classType)) {
            throw Exception("Cannot explicitly cast from $exprType to ${n.classType}")
        }
        n.type = ExprType(n.classType)
    }

    override fun visit(n: VariableDecl) {
        if (n.value != null) {
            val variableType = n.variableType
            val valueType = n.value.type!!.type
            if (!canImplicitlyCast(valueType, variableType)) {
                throw Exception("Value type $valueType cannot be implicitly cast to lhs type $variableType in variable assignment")
            }
        }
    }

    override fun visit(n: ReturnStatement) {
        if (n.expr != null) {
            val returnType = n.expr.type!!.type
            val methodReturnType = symbolTableVisitor.curMethod!!.returnType
            if (isEqualToPrimitive(symbolTableVisitor.curMethod!!.returnType, Primitive.VOID)) {
                throw Exception("A value return statement cannot have type void")
            }
            if (!canImplicitlyCast(returnType, methodReturnType)) {
                throw Exception("Return type $returnType cannot be implicitly cast to method return type $methodReturnType")
            }
        } else {
            if (symbolTableVisitor.curMethod!! !is Constructor && !isEqualToPrimitive(symbolTableVisitor.curMethod!!.returnType, Primitive.VOID)) {
                throw Exception("Return type must be ${symbolTableVisitor.curMethod!!.returnType}")
            }
        }
    }

    override fun visit(n: If) {
        val conditionType = n.expr.type!!.type
        if (!isEqualToPrimitive(conditionType, Primitive.BOOLEAN)) {
            throw Exception("Condition clause in if must have type boolean.")
        }
    }

    override fun visit(n: While) {
        val conditionType = n.expr.type!!.type
        if (!isEqualToPrimitive(conditionType, Primitive.BOOLEAN)) {
            throw Exception("Condition clause in if must have type boolean.")
        }
    }

    override fun visit(n: For) {
        val conditionType = n.conditionExpr.expr?.type?.type
        if (conditionType != null && !isEqualToPrimitive(conditionType, Primitive.BOOLEAN)) {
            throw Exception("Condition clause in if must have type boolean.")
        }
    }

    override fun visit(n: Field) {
        val fieldType = n.variable_type
        val valueType = n.expr?.type?.type
        if (valueType != null && !canImplicitlyCast(valueType, fieldType)) {
            throw Exception("Value type $valueType cannot be implicitly cast to lhs type $fieldType in variable assignment")
        }
    }
}