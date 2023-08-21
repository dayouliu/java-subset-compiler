class ASTVisitors(
    val symbolTableVisitor: SymbolTableVisitor?,
    val typeLinkingVisitor: TypeLinkingVisitor?,
//  val hierarchyCheckVisitor: HierarchyCheckVisitor,
    val typeCheckVisitor: TypeCheckVisitor?,
    val graphConstructionVisitor: GraphConstructionVisitor?,
    val dataflowAnalysisVisitor: DataflowAnalysisVisitor?,
    val liveVariableAnalysisVisitor: LiveVariableAnalysisVisitor?,
    val deadVariableAssignmentVisitor: DeadVariableAssignmentVisitor?,
    val reachabilityVisitor: ReachabilityVisitor?,
    val translateVisitor: TranslateVisitor?,
) {}