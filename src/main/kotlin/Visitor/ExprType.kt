class ExprType(
    val type: VariableType,
    val isInstantiation: Boolean = true,
) {}

enum class DisambigNameTag {
    PKG, TYPE, EXPR, PAREN_WRAPPED_TYPE
}