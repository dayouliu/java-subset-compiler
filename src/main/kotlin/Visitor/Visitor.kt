open class Visitor {

    open fun visit(n: Java) {}

    open fun visit(n: PkgURI) {}

    open fun visit(n: ClassDecl) {}

    open fun visit(n: InterfaceDecl) {}

    open fun visit(n: Field) {}

    open fun visit(n: Parameter) {}

    open fun visit(n: Method) {}

    open fun visit(n: Constructor) {}

    open fun visit(n: MethodDecl) {}

    open fun visit(n: PrimitiveType) {}

    open fun visit(n: CompoundVariableType) {}

    open fun visit(n: ArrayType) {}

    open fun visit(n: ReturnStatement) {}

    open fun visit(n: VariableDecl) {}

    open fun visit(n: ExprStatement) {}

    open fun visit(n: Block) {}

    open fun visit(n: Semicolon) {}

    open fun visit(n: If) {}

    open fun visit(n: While) {}

    open fun visit(n: ForInitializationExpr) {}

    open fun visit(n: ForConditionExpr) {}

    open fun visit(n: ForIterationExpr) {}

    open fun visit(n: For) {}

    open fun visit(n: PrimitiveCastExpr) {}

    open fun visit(n: ArrayCastExpr) {}

    open fun visit(n: RefCastExpr) {}

    open fun visit(n: VariableAssignment) {}

    open fun visit(n: ParenWrappedExpr) {}

    open fun visit(n: VariableAccess) {}

    open fun visit(n: FieldAccess) {}

    open fun visit(n: MethodCall) {}

    open fun visit(n: ArrayAccess) {}

    open fun visit(n: IntLiteral) {}

    open fun visit(n: StringLiteral) {}

    open fun visit(n: CharLiteral) {}

    open fun visit(n: BoolLiteral) {}

    open fun visit(n: NullLiteral) {}

    open fun visit(n: This) {}

    open fun visit(n: NewArrayExpr) {}

    open fun visit(n: NewObjectExpr) {}

    open fun visit(n: BinaryExpr) {}

    open fun visit(n: InstanceofExpr) {}

    open fun visit(n: UnaryExpr) {}
}
