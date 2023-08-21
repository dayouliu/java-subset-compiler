import java.math.BigInteger

abstract class Node {
    abstract fun toIndentedString(indentLevel: Int): String
    open fun accept(v: ASTVisitors) {}
}

class Java(
    val pkg_decl: PkgURI,
    val pkg_import_list: List<PkgURI>,
    val class_or_interface: ClassOrInterface
) : Node() {
    init {
        if (pkg_decl.lst.joinToString(".") == "java.lang" && class_or_interface is ClassDecl && class_or_interface.name == "Object") {
            class_or_interface.realExtends = null
        }
    }
    override fun toString(): String {
        return toIndentedString(0)
    }
    override fun toIndentedString(indentLevel: Int): String {
        val indent = "\t".repeat(indentLevel)
        return "${indent}JAVA PROGRAM:\n" +
                pkg_decl.toIndentedString(indentLevel + 1) +
                "${indent}\tPkgImportList: \n" +
                pkg_import_list.joinToString("\n", postfix = "\n") { it.toIndentedString(indentLevel + 2) } +
                class_or_interface.toIndentedString(indentLevel + 1)
    }

    override fun accept(v: ASTVisitors) {
        v.symbolTableVisitor?.visit(this)
        pkg_decl.accept(v)
        pkg_import_list.forEach { it.accept(v) }
        class_or_interface.accept(v)
        v.typeLinkingVisitor?.visit(this)
        v.typeCheckVisitor?.visit(this)
        v.translateVisitor?.visit(this)
        v.symbolTableVisitor?.exit()
    }
}

class PkgURI(
    var lst: List<String>,
) : Node() {
    var includeStar: Boolean = false
    override fun toIndentedString(indentLevel: Int): String {
        val indent = "\t".repeat(indentLevel)
        return "${indent}PkgURI: ${lst.joinToString(".")}\n"
    }
    override fun toString(): String {
        return toIndentedString(0)
    }
    fun pkgURIToAccess(): Access {
        if (lst.size == 1) {
            return VariableAccess(lst[0])
        }
        return FieldAccess(lst)
    }
    override fun accept(v: ASTVisitors) {
        v.symbolTableVisitor?.visit(this)
        v.typeCheckVisitor?.visit(this)
    }


    companion object{
        fun fullyQualifiedNameToClassKey(fullyQualifiedName: String): Pair<String, String> {
            val split = fullyQualifiedName.split(".")
            return Pair(split.dropLast(1).joinToString("."), split.last())
        }

        fun fromString(str: String): PkgURI {
            var lst = str.split(".")
            var includeStar = false
            if (lst.last() == "*") {
                includeStar = true
                lst = lst.dropLast(1)
            }
            var result = PkgURI(lst)
            result.includeStar = includeStar
            return result
        }
    }

    fun getPkgImportPkgName(): String{
        return lst.dropLast(1).joinToString(".")
    }

    fun getPkgImportClassName(): String{
        if (includeStar) {
            throw Exception("Cannot get class name of import that includes star")
        }
        return lst.last()
    }

    fun getPairKey() : Pair<String, String> {
        return Pair(getPkgImportPkgName(), getPkgImportClassName())
    }

    fun isSimpleName(): Boolean {
        return lst.size == 1
    }
}

enum class Modifier {
    PUBLIC,
    PROTECTED,
    ABSTRACT,
    FINAL,
    STATIC,
    NATIVE,;

    fun toIndentedString(indentLevel: Int): String {
        val indent = "\t".repeat(indentLevel)
        return "${indent}MODIFIER: ${this.name}\n"
    }
}

abstract class ClassOrInterface : Node()  {
    abstract val name: String
    abstract var pairKey: Pair<String, String>

    fun fullyQualifiedName(): String {
        return "${pairKey.first}.${pairKey.second}"
    }
}

class ClassDecl(
    val modifier_list: HashSet<Modifier>,
    override val name: String,
    val extends: CompoundVariableType?,
    val implements: List<CompoundVariableType>,
    val method_field_list: List<MethodOrField>
) : ClassOrInterface() {
    var methodList: List<Method> = ArrayList<Method>()
    val fieldMap: LinkedHashMap<String, Field> = LinkedHashMap<String, Field>()
    var constructorList: List<Constructor> = ArrayList<Constructor>()
    var methodDeclList: List<MethodDecl> = ArrayList<MethodDecl>()
    var realExtends: CompoundVariableType? = extends ?: CompoundVariableType(PkgURI(listOf("java", "lang", "Object")))
    override var pairKey: Pair<String, String> = Pair<String, String>("", "")
    init {
        for (entry in method_field_list) {
            when (entry) {
                is Method -> {
                    methodList += entry
                }

                is Field -> {
                    if (fieldMap.containsKey(entry.name)) {
                        throw Exception("The same class contains more than one field of the same name")
                    }
                    fieldMap.put(entry.name, entry)
                }

                is Constructor -> {
                    constructorList += entry
                }

                is MethodDecl -> {
                    methodDeclList += entry
                }
            }
        }
    }
    override fun toIndentedString(indentLevel: Int): String {
        val indent = "\t".repeat(indentLevel)
        return "${indent}ClassDecl: \n" +
                "${indent}\tname: ${name}\n" +
                "${indent}\textends: ${realExtends}\n" +
                "${indent}\timplements:\n" +
                implements.joinToString("\n") { it.toIndentedString(indentLevel + 2) } +
                "${indent}\tmethod_field_list:\n" +
                method_field_list.joinToString("\n", postfix = "\n") { it.toIndentedString(indentLevel + 2) }
    }
    override fun toString(): String {
        return toIndentedString(0)
    }
    override fun accept(v: ASTVisitors) {
        v.symbolTableVisitor?.visit(this)
        realExtends?.accept(v)
        implements.forEach { it.accept(v) }
        method_field_list.forEach { it.accept(v) }
//        v.hierarchyCheckVisitor?.visit(this)
        v.typeCheckVisitor?.visit(this)
        v.graphConstructionVisitor?.visit(this)
        v.symbolTableVisitor?.exit()
        v.symbolTableVisitor?.exitClass()
    }
}

class InterfaceDecl(
    override val name: String,
    val extendList: ArrayList<CompoundVariableType>,
    val methodDeclList: List<MethodDecl>
) : ClassOrInterface() {
    override var pairKey: Pair<String, String> = Pair<String, String>("", "")

    init {
        extendList.add(CompoundVariableType(PkgURI(listOf("java", "lang", "Object"))))
    }
    override fun toIndentedString(indentLevel: Int): String {
        val indent = "\t".repeat(indentLevel)
        return "${indent}InterfaceDecl: \n" +
                "${indent}\tname: ${name}\n" +
                "${indent}\textends: ${extendList}\n" +
                "${indent}\tmethod_decl_list:\n" +
                methodDeclList.joinToString("\n") { it.toIndentedString(indentLevel + 2) }
    }
    override fun toString(): String {
        return toIndentedString(0)
    }
    override fun accept(v: ASTVisitors) {
        v.symbolTableVisitor?.visit(this)
        extendList.forEach { it.accept(v) }
        methodDeclList.forEach { it.accept(v) }
//        v.hierarchyCheckVisitor?.visit(this)
        v.graphConstructionVisitor?.visit(this)
        v.typeCheckVisitor?.visit(this)
    }
}

abstract class MethodOrField : Node()

class Field(
    val modifier_list: HashSet<Modifier>,
    val variable_type: VariableType,
    val name: String,
    val expr: Expr?
): MethodOrField() {
    override fun toIndentedString(indentLevel: Int): String {
        val indent = "\t".repeat(indentLevel)
        return "${indent}Field: \n" +
                "${indent}\tmodifier_list:\n" +
                modifier_list.joinToString("\n") { it.toIndentedString(indentLevel + 2) } +
                "${indent}\tvariable_type: ${variable_type}\n" +
                "${indent}\tname: ${name}\n" +
                "${indent}\texpr:\n" +
                expr?.toIndentedString(indentLevel + 2)
    }
    override fun toString(): String {
        return toIndentedString(0)
    }
    override fun accept(v: ASTVisitors) {
        v.symbolTableVisitor?.visit(this)
        variable_type.accept(v)
        expr?.accept(v)
        v.typeCheckVisitor?.visit(this)
        v.symbolTableVisitor?.exitField()
    }
}

class Parameter(
    val variable_type: VariableType,
    val name: String
): Node() {
    override fun toIndentedString(indentLevel: Int): String {
        val indent = "\t".repeat(indentLevel)
        return "${indent}Parameter<variable_type: ${variable_type}, name: ${name}>"
    }
    override fun toString(): String {
        return toIndentedString(0)
    }
    override fun accept(v: ASTVisitors) {
        v.symbolTableVisitor?.visit(this)
        variable_type.accept(v)
        v.typeCheckVisitor?.visit(this)
    }
}

abstract class MethodLike: MethodOrField() {
    abstract val modifier_list: HashSet<Modifier>
    abstract val name: String
    abstract val  parameter_list: List<Parameter>
    abstract val returnType: VariableType
    var methodClassKey: Pair<String, String>? = null
    fun getMethodSignatureKey(): String {
        return "${name}_${parameter_list.map {
            it.variable_type.getFullyQualifiedName()
        }.joinToString("_")}"
    }
}

class Method(
    override val modifier_list: HashSet<Modifier>,
    override val returnType: VariableType,
    override val name: String,
    override val parameter_list: ArrayList<Parameter>,
    val block: Block,
): MethodLike() {
    override fun toIndentedString(indentLevel: Int): String {
        val indent = "\t".repeat(indentLevel)
        return "${indent}Method: \n" +
                "${indent}\tmodifiers_list:\n" +
                modifier_list.joinToString("\n", postfix = "\n") { it.toIndentedString(indentLevel + 2) } +
                "${indent}\tvariable_type: ${returnType}\n" +
                "${indent}\tname: ${name}\n" +
                "${indent}\tparameter_list:\n" +
                parameter_list.joinToString("\n", postfix = "\n") { it.toIndentedString(indentLevel + 2) } +
                block.toIndentedString(indentLevel + 1)
    }
    override fun toString(): String {
        return toIndentedString(0)
    }
    override fun accept(v: ASTVisitors) {
        v.symbolTableVisitor?.visit(this)
        returnType.accept(v)
        parameter_list.forEach { it.accept(v) }
        block.accept(v)
        v.typeCheckVisitor?.visit(this)
        v.dataflowAnalysisVisitor?.visit(this)
        v.liveVariableAnalysisVisitor?.visit(this)
        v.deadVariableAssignmentVisitor?.visit(this)
        v.reachabilityVisitor?.visit(this)
        v.translateVisitor?.visit(this)
        v.symbolTableVisitor?.exitMethod()
        v.symbolTableVisitor?.exit()
    }
}

class Constructor(
    override val modifier_list: HashSet<Modifier>,
    override val name: String,
    override val parameter_list: ArrayList<Parameter>,
    val block: Block
): MethodLike() {
    override var returnType: VariableType = PrimitiveType(Primitive.NULL)
    override fun toIndentedString(indentLevel: Int): String {
        val indent = "\t".repeat(indentLevel)
        return "${indent}Constructor: \n" +
                "${indent}\tmodifiers_list:\n" +
                modifier_list.joinToString("\n", postfix = "\n") { it.toIndentedString(indentLevel + 2) } +
                "${indent}\tname: ${name}\n" +
                "${indent}\tparameter_list:\n" +
                parameter_list.joinToString("\n", postfix = "\n") { it.toIndentedString(indentLevel + 2) } +
                block?.toIndentedString(indentLevel + 1)
    }
    override fun toString(): String {
        return toIndentedString(0)
    }
    override fun accept(v: ASTVisitors) {
        v.symbolTableVisitor?.visit(this)
        parameter_list.forEach { it.accept(v) }
        block?.accept(v)
        v.typeCheckVisitor?.visit(this)
        v.liveVariableAnalysisVisitor?.visit(this)
        v.deadVariableAssignmentVisitor?.visit(this)
        v.reachabilityVisitor?.visit(this)
        v.translateVisitor?.visit(this)
        v.symbolTableVisitor?.exit()
    }
}

class MethodDecl(
    override val modifier_list: HashSet<Modifier>,
    override val returnType: VariableType,
    override val name: String,
    override val parameter_list: List<Parameter>,
): MethodLike() {
    override fun toIndentedString(indentLevel: Int): String {
        val indent = "\t".repeat(indentLevel)
        return "${indent}MethodDecl: \n" +
                "${indent}\tmodifiers_list:\n" +
                modifier_list.joinToString("\n", postfix = "\n") { it.toIndentedString(indentLevel + 2) } +
                "${indent}\tvariable_type: ${returnType}\n" +
                "${indent}\tname: ${name}\n" +
                "${indent}\tparameter_list:\n" +
                parameter_list.joinToString("\n", postfix = "\n") { it.toIndentedString(indentLevel + 2) }
    }
    override fun toString(): String {
        return toIndentedString(0)
    }
    override fun accept(v: ASTVisitors) {
        v.symbolTableVisitor?.visit(this)
        returnType.accept(v)
        parameter_list.forEach { it.accept(v) }
        v.typeCheckVisitor?.visit(this)
        v.symbolTableVisitor?.exit()
    }
}

abstract class VariableType: Node() {
    abstract fun getFullyQualifiedName(): String
}

enum class Primitive {
    INT,
    SHORT,
    CHAR,
    BYTE,
    BOOLEAN,
    NULL,
    VOID,
}
class PrimitiveType(val primitive: Primitive): VariableType() {
    override fun toIndentedString(indentLevel: Int): String {
        val indent = "\t".repeat(indentLevel)
        return "${indent}PrimitiveType<${primitive}>"
    }
    override fun toString(): String {
        return "PrimitiveType: <${primitive}>"
    }
    override fun getFullyQualifiedName(): String{
        return primitive.toString()
    }

    fun isIntegral(): Boolean {
        return primitive == Primitive.CHAR || primitive == Primitive.INT || primitive == Primitive.BYTE || primitive == Primitive.SHORT
    }

    fun isBoolean(): Boolean {
        return primitive == Primitive.BOOLEAN
    }
}

class CompoundVariableType(val pkg_uri: PkgURI) : VariableType() {
    var fullyQualifiedNameVar : String? = null
    override fun toIndentedString(indentLevel: Int): String {
        val indent = "\t".repeat(indentLevel)
        return "${indent}CompoundVariableType<${pkg_uri}>"
    }
    override fun toString(): String {
        return "CompoundVariableType: <${pkg_uri}>"
    }
    override fun accept(v: ASTVisitors) {
        v.symbolTableVisitor?.visit(this)
        pkg_uri.accept(v)
        v.typeLinkingVisitor?.visit(this)
        v.typeCheckVisitor?.visit(this)
    }

    override fun getFullyQualifiedName(): String {
        if (fullyQualifiedNameVar != null) return fullyQualifiedNameVar as String
        else {
            throw Exception("Fully qualified name not set for CompoundVariableType for pkg: $pkg_uri")
        }
    }

    companion object {
        fun fromFullyQualifiedName(fullyQualifiedName: String): CompoundVariableType {
            val pkg_uri = PkgURI.fromString(fullyQualifiedName)
            val compoundVariableType = CompoundVariableType(pkg_uri)
            compoundVariableType.fullyQualifiedNameVar = fullyQualifiedName
            return compoundVariableType
        }
    }
}

class ArrayType(val variableType: VariableType): VariableType() {
    override fun accept(v: ASTVisitors) {
        v.symbolTableVisitor?.visit(this)
        variableType.accept(v)
        v.typeCheckVisitor?.visit(this)
    }
    override fun toIndentedString(indentLevel: Int): String {
        val indent = "\t".repeat(indentLevel)
        return "${indent}ArrayType<${variableType}>"
    }
    override fun toString(): String {
        return "ArrayType: <${variableType}>"
    }

    override fun getFullyQualifiedName(): String {
        return variableType.getFullyQualifiedName() + "[]"
    }
}

abstract class ExprOrStatement: Node() {
    var use: Set<String> = setOf()
    var def: Set<String> = setOf()
}

abstract class Statement : ExprOrStatement() {
    var dfaPredecessors: MutableList<Statement> = mutableListOf()
    var dfaSuccessors: MutableList<Statement> = mutableListOf()
    var inn: Set<String> = setOf()
    var out: Set<String> = setOf()

    open fun startDFANode(): Statement {
        return this
    }

    open fun endDFANode(): ArrayList<Statement> {
        return arrayListOf(this)
    }
}

class ReturnStatement(
    val expr: Expr?,
): Statement() {
    override fun toIndentedString(indentLevel: Int): String {
        val indent = "\t".repeat(indentLevel)
        return "${indent}ReturnStatement:\n" +
                expr?.toIndentedString(indentLevel + 1)
    }
    override fun toString(): String {
        return toIndentedString(0)
    }
    override fun accept(v: ASTVisitors) {
        v.symbolTableVisitor?.visit(this)
        expr?.accept(v)
        v.typeCheckVisitor?.visit(this)
        v.liveVariableAnalysisVisitor?.visit(this)
    }
}

abstract class Expr : ExprOrStatement() {
    var type: ExprType? = null
    var disambigTag: DisambigNameTag? = null

    fun exprToPkgURIList(): List<String> {
        return when(this) {
            is VariableAccess -> {
                listOf(this.variableName)
            }
            is FieldAccess -> {
                val pkgURIList = this.objectExpr.exprToPkgURIList()
                pkgURIList + this.fieldName
            }
            else -> throw Exception("exprToPkgURIList expr must consist only of VariableAccess and FieldAccess")
        }
    }
    fun toPairKey(): Pair<String, String> {
        return when(this) {
            is VariableAccess -> {
                Pair("", this.variableName)
            }
            is FieldAccess -> {
                val pkgURIList = this.objectExpr.exprToPkgURIList()
                Pair(pkgURIList.joinToString(separator="."), this.fieldName)
            }
            else -> throw Exception("toPairKey expr must consist only of VariableAccess and FieldAccess")
        }
    }
}

class VariableDecl(
    val variableType: VariableType,
    val name: String,
    val value: Expr?,
): Statement() {
    override fun toIndentedString(indentLevel: Int): String {
        val indent = "\t".repeat(indentLevel)
        return "${indent}VariableDecl: \n" +
                "${indent}\tvariableType: ${variableType}\n" +
                "${indent}\tname: ${name}\n" +
                "${indent}\tvalue:\n" +
                value?.toIndentedString(indentLevel + 2)
    }
    override fun toString(): String {
        return toIndentedString(0)
    }
    override fun accept(v: ASTVisitors) {
        v.symbolTableVisitor?.visit(this)
        variableType.accept(v)
        value?.accept(v)
        v.typeCheckVisitor?.visit(this)
        v.liveVariableAnalysisVisitor?.visit(this)
        v.deadVariableAssignmentVisitor?.visit(this)
    }
}

class ExprStatement(
    val expr: Expr,
) : Statement() {
    override fun toIndentedString(indentLevel: Int): String {
        val indent = "\t".repeat(indentLevel)
        return "${indent}ExprStatement: \n" +
                expr.toIndentedString(indentLevel + 1)
    }
    override fun toString(): String {
        return toIndentedString(0)
    }
    override fun accept(v: ASTVisitors) {
        v.symbolTableVisitor?.visit(this)
        expr.accept(v)
        v.typeCheckVisitor?.visit(this)
        v.liveVariableAnalysisVisitor?.visit(this)
    }
}

abstract class ControlFlow : Statement()

class Block(
    val statementList: List<Statement>,
): Statement() {
    override fun startDFANode(): Statement {
        return if (statementList.isEmpty()) {
            this
        } else {
            statementList.first().startDFANode()
        }
    }

    override fun endDFANode(): ArrayList<Statement> {
        return if (statementList.isEmpty()) {
            arrayListOf(this)
        } else {
            statementList.last().endDFANode()
        }
    }

    override fun toIndentedString(indentLevel: Int): String {
        val indent = "\t".repeat(indentLevel)
        return "${indent}Block: \n" +
                statementList.joinToString("\n", postfix = "\n") { it.toIndentedString(indentLevel + 1) }
    }
    override fun toString(): String {
        return toIndentedString(0)
    }
    override fun accept(v: ASTVisitors) {
        v.symbolTableVisitor?.visit(this)
        statementList.forEach { it.accept(v) }
        v.typeCheckVisitor?.visit(this)
        v.dataflowAnalysisVisitor?.visit(this)
        v.symbolTableVisitor?.exit()
    }
}

class Semicolon: Statement() {
    override fun toIndentedString(indentLevel: Int): String {
        val indent = "\t".repeat(indentLevel)
        return "${indent}Semicolon: \n"
    }
    override fun toString(): String {
        return toIndentedString(0)
    }
    override fun accept(v: ASTVisitors) {
        v.symbolTableVisitor?.visit(this)
    }
}

class DummyMethodEndStatement: Statement() {
    override fun toIndentedString(indentLevel: Int): String {
        return ""
    }
}

class If(
    val expr: Expr,
    val thenStatement: Statement,
    val elseStatement: Statement?,
): ControlFlow() {

    override fun endDFANode(): ArrayList<Statement> {
        if (elseStatement == null) {
            return (arrayListOf(this) + thenStatement.endDFANode()) as ArrayList<Statement>
        } else {
            return (thenStatement.endDFANode() + elseStatement.endDFANode()) as ArrayList<Statement>
        }
    }

    override fun toIndentedString(indentLevel: Int): String {
        val indent = "\t".repeat(indentLevel)
        return "${indent}If: \n" +
                "${indent}\texpr:\n" +
                expr.toIndentedString(indentLevel + 2) +
                "${indent}\tthenStatement:\n" +
                thenStatement.toIndentedString(indentLevel + 2) +
                "${indent}\telseStatement:\n" +
                elseStatement?.toIndentedString(indentLevel + 2)
    }
    override fun toString(): String {
        return toIndentedString(0)
    }
    override fun accept(v: ASTVisitors) {
        v.symbolTableVisitor?.visit(this)
        expr.accept(v)
        thenStatement.accept(v)
        elseStatement?.accept(v)
        v.typeCheckVisitor?.visit(this)
        v.dataflowAnalysisVisitor?.visit(this)
        v.liveVariableAnalysisVisitor?.visit(this)
    }
}

class While(
    val expr: Expr,
    val statement: Statement,
): ControlFlow() {
    override fun toIndentedString(indentLevel: Int): String {
        val indent = "\t".repeat(indentLevel)
        return "${indent}While: \n" +
                "${indent}\texpr:\n" +
                expr.toIndentedString(indentLevel + 2) +
                "${indent}\tstatement:\n" +
                statement.toIndentedString(indentLevel + 2)
    }
    override fun toString(): String {
        return toIndentedString(0)
    }
    override fun accept(v: ASTVisitors) {
        v.symbolTableVisitor?.visit(this)
        expr.accept(v)
        statement.accept(v)
        v.typeCheckVisitor?.visit(this)
        v.dataflowAnalysisVisitor?.visit(this)
        v.liveVariableAnalysisVisitor?.visit(this)
    }
}

class ForInitializationExpr(
    val expr: Statement?
): Statement() {
    override fun toIndentedString(indentLevel: Int): String {
        val indent = "\t".repeat(indentLevel)
        return "${indent}ForInitializationExpr: \n" +
                expr?.toIndentedString(indentLevel + 1)
    }

    override fun toString(): String {
        return toIndentedString(0)
    }
    override fun accept(v: ASTVisitors) {
        v.symbolTableVisitor?.visit(this)
        expr?.accept(v)
        v.typeCheckVisitor?.visit(this)
        v.liveVariableAnalysisVisitor?.visit(this)
    }
}

class ForConditionExpr(
    val expr: Expr?,
): Statement() {
    override fun toIndentedString(indentLevel: Int): String {
        val indent = "\t".repeat(indentLevel)
        return "${indent}ForConditionExpr: \n" +
                expr?.toIndentedString(indentLevel + 1)
    }

    override fun toString(): String {
        return toIndentedString(0)
    }
    override fun accept(v: ASTVisitors) {
        v.symbolTableVisitor?.visit(this)
        expr?.accept(v)
        v.typeCheckVisitor?.visit(this)
        v.liveVariableAnalysisVisitor?.visit(this)
    }
}

class ForIterationExpr(
    val expr: Expr?
): Statement() {
    override fun toIndentedString(indentLevel: Int): String {
        val indent = "\t".repeat(indentLevel)
        return "${indent}ForIterationExpr: \n" +
                expr?.toIndentedString(indentLevel + 1)
    }

    override fun toString(): String {
        return toIndentedString(0)
    }
    override fun accept(v: ASTVisitors) {
        v.symbolTableVisitor?.visit(this)
        expr?.accept(v)
        v.typeCheckVisitor?.visit(this)
        v.liveVariableAnalysisVisitor?.visit(this)
    }
}

class For(
    val initializationExpr: ForInitializationExpr,
    val conditionExpr: ForConditionExpr,
    val iterationExpr: ForIterationExpr,
    val statement: Statement,
): ControlFlow() {
    override fun startDFANode(): Statement {
        return initializationExpr
    }

    override fun endDFANode(): ArrayList<Statement> {
        return arrayListOf(conditionExpr)
    }

    override fun toIndentedString(indentLevel: Int): String {
        val indent = "\t".repeat(indentLevel)
        return "${indent}For: \n" +
                initializationExpr.toIndentedString(indentLevel + 1) +
                conditionExpr.toIndentedString(indentLevel + 1) +
                iterationExpr.toIndentedString(indentLevel + 1) +
                "${indent}\tstatement:\n" +
                statement.toIndentedString(indentLevel + 2)
    }
    override fun toString(): String {
        return toIndentedString(0)
    }
    override fun accept(v: ASTVisitors) {
        v.symbolTableVisitor?.visit(this)
        initializationExpr.accept(v)
        conditionExpr.accept(v)
        statement.accept(v)
        iterationExpr.accept(v)
        v.typeCheckVisitor?.visit(this)
        v.dataflowAnalysisVisitor?.visit(this)
        v.symbolTableVisitor?.exit()
    }
}

class PrimitiveCastExpr(
    val primitiveType: Primitive,
    val expr: Expr
): CastExpr() {
    override fun toIndentedString(indentLevel: Int): String {
        val indent = "\t".repeat(indentLevel)
        return "${indent}PrimitiveCastExpr: \n" +
                "${indent}\tprimitiveType: ${primitiveType}\n" +
                "${indent}\texpr:\n" +
                expr.toIndentedString(indentLevel + 2)
    }
    override fun toString(): String {
        return toIndentedString(0)
    }
    override fun accept(v: ASTVisitors) {
        v.symbolTableVisitor?.visit(this)
        expr.accept(v)
        v.typeCheckVisitor?.visit(this)
        v.liveVariableAnalysisVisitor?.visit(this)
    }
}

class ArrayCastExpr(
    val arrayType: ArrayType,
    val expr: Expr
): CastExpr() {
    override fun toIndentedString(indentLevel: Int): String {
        val indent = "\t".repeat(indentLevel)
        return "${indent}ArrayCastExpr: \n" +
                "${indent}\tarrayType: ${arrayType}\n" +
                "${indent}\texpr:\n" +
                expr.toIndentedString(indentLevel + 2)
    }
    override fun toString(): String {
        return toIndentedString(0)
    }
    override fun accept(v: ASTVisitors) {
        v.symbolTableVisitor?.visit(this)
        arrayType.accept(v)
        expr.accept(v)
        v.typeCheckVisitor?.visit(this)
        v.liveVariableAnalysisVisitor?.visit(this)
    }
}

class RefCastExpr(
    val classType: CompoundVariableType,
    val expr: Expr
): CastExpr() {
    override fun toIndentedString(indentLevel: Int): String {
        val indent = "\t".repeat(indentLevel)
        return "${indent}RefCastExpr: \n" +
                "${indent}\tclassType: ${classType}\n" +
                "${indent}\texpr:\n" +
                expr.toIndentedString(indentLevel + 2)
    }
    override fun toString(): String {
        return toIndentedString(0)
    }
    override fun accept(v: ASTVisitors) {
        v.symbolTableVisitor?.visit(this)
        classType.accept(v)
        expr.accept(v)
        v.typeCheckVisitor?.visit(this)
        v.liveVariableAnalysisVisitor?.visit(this)
    }
}

abstract class SingleTermExpr : Expr()

abstract class ArithmeticExpr : Expr()

class VariableAssignment(
    val lhs: Expr,
    val value: Expr,
): Expr() {
    override fun toIndentedString(indentLevel: Int): String {
        val indent = "\t".repeat(indentLevel)
        return "${indent}VariableAssignment: \n" +
                "${indent}\tlhs:\n" +
                lhs.toIndentedString(indentLevel + 2) +
                "${indent}\tvalue:\n" +
                value.toIndentedString(indentLevel + 2)
    }
    override fun toString(): String {
        return toIndentedString(0)
    }
    override fun accept(v: ASTVisitors) {
        v.symbolTableVisitor?.visit(this)
        lhs.accept(v)
        value.accept(v)
        v.typeCheckVisitor?.visit(this)
        v.liveVariableAnalysisVisitor?.visit(this)
    }
}

abstract class CastExpr : Expr()

class ParenWrappedExpr(
    val expr: Expr
): SingleTermExpr() {
    override fun toIndentedString(indentLevel: Int): String {
        val indent = "\t".repeat(indentLevel)
        return "${indent}ParenWrappedExpr: \n" +
                "${indent}\texpr:\n" +
                expr.toIndentedString(indentLevel + 2)
    }
    override fun toString(): String {
        return toIndentedString(0)
    }
    override fun accept(v: ASTVisitors) {
        v.symbolTableVisitor?.visit(this)
        expr.accept(v)
        v.typeCheckVisitor?.visit(this)
        v.liveVariableAnalysisVisitor?.visit(this)
    }
}

abstract class Access : SingleTermExpr()

class VariableAccess(
    val variableName: String,
): Access() {
    var lhsFieldRef = false
    var isField = false
    var curClass: String? = null
    override fun toIndentedString(indentLevel: Int): String {
        val indent = "\t".repeat(indentLevel)
        return "${indent}Variable<name: ${variableName}>\n"
    }
    override fun toString(): String {
        return toIndentedString(0)
    }
    override fun accept(v: ASTVisitors) {
        v.symbolTableVisitor?.visit(this)
        v.typeCheckVisitor?.visit(this)
        v.liveVariableAnalysisVisitor?.visit(this)
        v.translateVisitor?.visit(this)
    }
}

class FieldAccess: Access {
    var objectExpr: SingleTermExpr
    var fieldName: String
    var objectExprPairKey: Pair<String, String>? = null

    constructor(
        objectExpr: SingleTermExpr,
        fieldName: String,
    ) {
        this.objectExpr = objectExpr
        this.fieldName = fieldName
    }

    constructor(
        pkgURIList: List<String>,
    ) {
        this.fieldName = pkgURIList[pkgURIList.size-1]
        if (pkgURIList.size == 1) {
            throw Exception("FieldAccess constructor must take in pkgURI list of size >= 2")
        } else {
            this.objectExpr = PkgURI(pkgURIList.dropLast(1)).pkgURIToAccess()
        }
    }
    override fun toIndentedString(indentLevel: Int): String {
        val indent = "\t".repeat(indentLevel)
        return "${indent}FieldAccess: \n" +
                "${indent}\tobjectExpr:\n" +
                objectExpr.toIndentedString(indentLevel + 2) +
                "${indent}\tfieldName: ${fieldName}\n"
    }
    override fun toString(): String {
        return toIndentedString(0)
    }

    override fun accept(v: ASTVisitors) {
        v.symbolTableVisitor?.visit(this)
        objectExpr.accept(v)
        v.typeCheckVisitor?.visit(this)
        v.liveVariableAnalysisVisitor?.visit(this)
    }
}

class MethodCall: Access {
    var objectExpr: SingleTermExpr
    var methodName: String
    var argsList: List<Expr>
    var method: MethodLike? = null
    var objectExprPairKey: Pair<String, String>? = null

    constructor(
        objectExpr: SingleTermExpr,
        methodName: String,
        argsList: List<Expr>,
    ) {
        this.objectExpr = objectExpr
        this.methodName = methodName
        this.argsList = argsList
    }

    constructor(
        pkgURIList: List<String>,
        argsList: List<Expr>,
    ) {
        this.argsList = argsList
        this.methodName = pkgURIList[pkgURIList.size-1]
        if (pkgURIList.size == 1) {
            this.objectExpr = This()
        } else {
            this.objectExpr = PkgURI(pkgURIList.dropLast(1)).pkgURIToAccess()
        }
    }

    override fun toIndentedString(indentLevel: Int): String {
        val indent = "\t".repeat(indentLevel)
        return "${indent}MethodCall: \n" +
                "${indent}\tobjectExpr:\n" +
                objectExpr.toIndentedString(indentLevel + 2) +
                "${indent}\tmethodName: ${methodName}\n" +
                "${indent}\targsList:\n" +
                argsList.joinToString("\n", postfix = "\n") { it.toIndentedString(indentLevel + 2) }
    }
    override fun toString(): String {
        return toIndentedString(0)
    }

    override fun accept(v: ASTVisitors) {
        v.symbolTableVisitor?.visit(this)
        objectExpr.accept(v)
        argsList.forEach { it.accept(v) }
        v.typeCheckVisitor?.visit(this)
        v.liveVariableAnalysisVisitor?.visit(this)
    }
}

class ArrayAccess(
    val arrayExpr: Expr,
    val arrayIndex: Expr,
): Access() {
    override fun toIndentedString(indentLevel: Int): String {
        val indent = "\t".repeat(indentLevel)
        return "${indent}ArrayAccess: \n" +
                "${indent}\tarrayExpr:\n" +
                arrayExpr.toIndentedString(indentLevel + 2) +
                "${indent}\tsize:\n" +
                arrayIndex.toIndentedString(indentLevel + 2)
    }
    override fun toString(): String {
        return toIndentedString(0)
    }
    override fun accept(v: ASTVisitors) {
        v.symbolTableVisitor?.visit(this)
        arrayExpr.accept(v)
        arrayIndex.accept(v)
        v.typeCheckVisitor?.visit(this)
        v.liveVariableAnalysisVisitor?.visit(this)
    }
}

abstract class Literal : SingleTermExpr()

class IntLiteral() : Literal() {
    var value : BigInteger = BigInteger("0")

    constructor(intStr: String): this(){
        value = BigInteger(intStr)
    }
    constructor(bInt: BigInteger): this() {
        value = bInt
    }

    override fun toIndentedString(indentLevel: Int): String {
        val indent = "\t".repeat(indentLevel)
        return "${indent}IntLiteral<${value}>\n"
    }
    override fun toString(): String {
        return toIndentedString(0)
    }
    override fun accept(v: ASTVisitors) {
        v.symbolTableVisitor?.visit(this)
        v.typeCheckVisitor?.visit(this)
    }
}

class StringLiteral(val s: String) : Literal() {
    override fun toIndentedString(indentLevel: Int): String {
        val indent = "\t".repeat(indentLevel)
        return "${indent}StringLiteral<${s}>\n"
    }
    override fun toString(): String {
        return toIndentedString(0)
    }
    override fun accept(v: ASTVisitors) {
        v.symbolTableVisitor?.visit(this)
        v.typeCheckVisitor?.visit(this)
    }
}

class CharLiteral(val c: Char) : Literal() {
    override fun toIndentedString(indentLevel: Int): String {
        val indent = "\t".repeat(indentLevel)
        return "${indent}CharLiteral<${c}>\n"
    }
    override fun toString(): String {
        return toIndentedString(0)
    }
    override fun accept(v: ASTVisitors) {
        v.symbolTableVisitor?.visit(this)
        v.typeCheckVisitor?.visit(this)
    }
}

class BoolLiteral(val b: Boolean) : Literal() {
    override fun toIndentedString(indentLevel: Int): String {
        val indent = "\t".repeat(indentLevel)
        return "${indent}BoolLiteral<${b}>\n"
    }
    override fun toString(): String {
        return toIndentedString(0)
    }
    override fun accept(v: ASTVisitors) {
        v.symbolTableVisitor?.visit(this)
        v.typeCheckVisitor?.visit(this)
    }
}

class NullLiteral : Literal() {
    override fun toIndentedString(indentLevel: Int): String {
        val indent = "\t".repeat(indentLevel)
        return "${indent}NullLiteral\n"
    }
    override fun toString(): String {
        return toIndentedString(0)
    }
    override fun accept(v: ASTVisitors) {
        v.symbolTableVisitor?.visit(this)
        v.typeCheckVisitor?.visit(this)
    }
}

class This : SingleTermExpr() {
    var currentClass: ClassDecl? = null
    override fun toIndentedString(indentLevel: Int): String {
        val indent = "\t".repeat(indentLevel)
        return "${indent}This\n"
    }
    override fun toString(): String {
        return toIndentedString(0)
    }
    override fun accept(v: ASTVisitors) {
        v.symbolTableVisitor?.visit(this)
        v.typeCheckVisitor?.visit(this)
    }
}

class NewArrayExpr(
    val primitiveType: PrimitiveType?,
    val classType: CompoundVariableType?,
    val size: Expr,
): SingleTermExpr() {
    override fun accept(v: ASTVisitors) {
        v.symbolTableVisitor?.visit(this)
        primitiveType?.accept(v)
        classType?.accept(v)
        size.accept(v)
        v.typeCheckVisitor?.visit(this)
        v.liveVariableAnalysisVisitor?.visit(this)
    }
    override fun toIndentedString(indentLevel: Int): String {
        val indent = "\t".repeat(indentLevel)
        return "${indent}NewArrayExpr: \n" +
                "${indent}\tprimitiveType: ${primitiveType}\n" +
                "${indent}\tclassType: ${classType}\n" +
                "${indent}\tsize:\n" +
                size.toIndentedString(indentLevel + 2)
    }
    override fun toString(): String {
        return toIndentedString(0)
    }
}

class NewObjectExpr(
    val classType: CompoundVariableType,
    val argsList: List<Expr>,
): SingleTermExpr() {
    var methodSignatureKey: String? = null
    override fun toIndentedString(indentLevel: Int): String {
        val indent = "\t".repeat(indentLevel)
        return "${indent}NewObjectExpr: \n" +
                "${indent}\tclassType: ${classType}\n" +
                "${indent}\targsList: ${argsList}\n"
    }
    override fun toString(): String {
        return toIndentedString(0)
    }
    override fun accept(v: ASTVisitors) {
        v.symbolTableVisitor?.visit(this)
        classType.accept(v)
        argsList.forEach { it.accept(v) }
        v.typeCheckVisitor?.visit(this)
        v.liveVariableAnalysisVisitor?.visit(this)
    }
}

enum class ArithmeticOperator {
    PLUS,
    MINUS,
    STAR,
    DIVIDE,
    MODULO,
    DOUBLE_EQUALS,
    LESS_THAN_OR_EQUAL,
    GREATER_THAN_OR_EQUAL,
    NOT_EQUAL,
    LESS_THAN,
    GREATER_THAN,
    AND,
    OR,
}

class BinaryExpr(
    val left: Expr,
    val op: ArithmeticOperator,
    val right: Expr,
): ArithmeticExpr() {
    override fun toIndentedString(indentLevel: Int): String {
        val indent = "\t".repeat(indentLevel)
        return "${indent}BinaryExpr: \n" +
                "${indent}\tleft:\n" +
                left.toIndentedString(indentLevel + 2) +
                "${indent}\top: ${op}\n" +
                "${indent}\tright:\n" +
                right.toIndentedString(indentLevel + 2)
    }
    override fun toString(): String {
        return toIndentedString(0)
    }
    override fun accept(v: ASTVisitors) {
        v.symbolTableVisitor?.visit(this)
        left.accept(v)
        right.accept(v)
        v.typeCheckVisitor?.visit(this)
        v.liveVariableAnalysisVisitor?.visit(this)
    }
}

class InstanceofExpr(
    val expr: Expr,
val varType: VariableType
): ArithmeticExpr() {
    override fun toIndentedString(indentLevel: Int): String {
        val indent = "\t".repeat(indentLevel)
        return "${indent}InstanceofExpr: \n" +
                "${indent}\texpr:\n" +
                expr.toIndentedString(indentLevel + 2) +
                "${indent}\tvarType: ${varType}\n"
    }
    override fun toString(): String {
        return toIndentedString(0)
    }
    override fun accept(v: ASTVisitors) {
        v.symbolTableVisitor?.visit(this)
        expr.accept(v)
        varType.accept(v)
        v.typeCheckVisitor?.visit(this)
        v.liveVariableAnalysisVisitor?.visit(this)
    }
}

enum class UnaryOperator {
    MINUS,
    NOT,
}

class UnaryExpr(
    val unaryOperator: UnaryOperator,
    val expr: Expr,
): ArithmeticExpr() {
    override fun toIndentedString(indentLevel: Int): String {
        val indent = "\t".repeat(indentLevel)
        return "${indent}UnaryExpr: \n" +
                "${indent}\tunaryOperator: ${unaryOperator}\n" +
                "${indent}\texpr:\n" +
                expr.toIndentedString(indentLevel + 2)
    }
    override fun toString(): String {
        return toIndentedString(0)
    }
    override fun accept(v: ASTVisitors) {
        v.symbolTableVisitor?.visit(this)
        expr.accept(v)
        v.typeCheckVisitor?.visit(this)
        v.liveVariableAnalysisVisitor?.visit(this)
    }
}
