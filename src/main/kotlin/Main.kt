import Translate.*
import tir.ir.ast.*
import tir.ir.interpret.Simulator
import tir.ir.visit.CheckCanonicalIRVisitor
import java.io.File
import java.io.FileReader
import kotlin.io.path.Path
import kotlin.system.exitProcess

fun readByTokens(lexer: Lexer) : ArrayList<Int> {
    val readTokens = ArrayList<Int>()
    while (true) {
        val t = lexer.next_token()
        println("token: ${t.sym} ${t.value}")
        readTokens.add(t.sym)
        if (t.sym == sym.EOF) break
    }
    return readTokens
}

fun readByTokensWithValue(lexer: Lexer) : ArrayList<Pair<Int, String>>{
    val readTokens = ArrayList<Pair<Int, String>>()
    while (true) {
        val t = lexer.next_token()
        val tString = "${sym.terminalNames[t.sym]}: ${t.value}"
        println("token: $tString")
        readTokens.add(Pair(t.sym, "${t.value}"))
        if (t.sym == sym.EOF) break
    }
    return readTokens
}

fun parseFile(file: File) : Java {
    return parseFile(file.absolutePath)
}

// parse a file and return the AST of the file
fun parseFile(filePath: String, debug: Boolean = true) : Java {
    val lexer = Lexer(FileReader(filePath))
    val fileReader = FileReader(filePath)
    var debugFlag = debug
    if (filePath.contains("6.1")) {
        debugFlag = false
    }
    if (debugFlag) {
        print("FILE PATH: $filePath \n\n")
        print(fileReader.readText())
    }
    val ret = parser(lexer).parse()
    if (false) {
        println("RET.VALUE = : ${ret.value}")
    }
    val fileName = Path(filePath).toFile().name
    val className = (ret.value as Java).class_or_interface.name
    if (!debug) {
        if (className != fileName.split(".")[0] || fileName.count { it == '.'} > 1) {
            throw Exception("File Name does not match the Class Name")
        }
    }
    return ret.value as Java
}
fun topoSort(graph: HashMap<Pair<String, String>, ArrayList<Pair<String, String>>>, astMap: HashMap<Pair<String, String>, Pair<Java, LocalSymbolTable>>): ArrayList<Pair<Java, LocalSymbolTable>> {
    val sortedList = ArrayList<Pair<Java, LocalSymbolTable>>()
    val visited = HashSet<Pair<String, String>>() // set of nodes that have been visited
    for (node in graph.keys) {
        topoSortHelper(node, graph, sortedList, astMap, visited)
    }
    return sortedList
}

fun topoSortHelper(node: Pair<String, String>, graph: HashMap<Pair<String, String>, ArrayList<Pair<String, String>>>, sortedList: ArrayList<Pair<Java, LocalSymbolTable>>, astMap: HashMap<Pair<String, String>, Pair<Java, LocalSymbolTable>>, visited: HashSet<Pair<String, String>>) {
    if (node in visited) {
        return
    }
    visited.add(node)
    if (node in graph) {
        for (child in graph[node]!!) {
            topoSortHelper(child, graph, sortedList, astMap, visited)
        }
    }
    sortedList.add(astMap[node]!!)
}

fun roundUpToPow2(n: Int): Int {
    var n = n
    n--
    n = n or (n shr 1)
    n = n or (n shr 2)
    n = n or (n shr 4)
    n = n or (n shr 8)
    n = n or (n shr 16)
    n++
    return n
}

fun generateIR(files: List<String>, debug: Boolean, warningList: ArrayList<String>, testFn: String?): Pair<Map<String, FuncDecl>, Int> {
    val astList = files.map { fileName -> parseFile(fileName, debug) }
    val globalTable = GlobalSymbolTable()
    val classInheritanceGraph = HashMap<Pair<String, String>, ArrayList<Pair<String, String>>>()
    for (ast in astList) {
        globalTable.insertAST(ast)
    }
    if (debug){
        globalTable.printTable()
    }
    val astAndLocalTableMap: HashMap<Pair<String, String>, Pair<Java, LocalSymbolTable>> = HashMap()
    for (ast in astList) {
        val debugFlag = if (ast.pkg_decl.lst.joinToString(".").contains("java")) false else debug
        val localSymbolTable = LocalSymbolTable(globalTable, debugFlag)
        val symbolTable = SymbolTable(localSymbolTable, globalTable, debugFlag)
        val symbolTableVisitor = SymbolTableVisitor(localSymbolTable, debugFlag)
        val typeLinkingVisitor = TypeLinkingVisitor(globalTable, localSymbolTable)
        // val typeCheckVisitor = TypeCheckVisitor()
        val graphConstructionVisitor = GraphConstructionVisitor(symbolTable, classInheritanceGraph, debugFlag)
        val visitors = ASTVisitors(
            symbolTableVisitor,
            typeLinkingVisitor,
            null,
            graphConstructionVisitor,
            null,
            null,
            null,
            null,
            null,
        )
        ast.accept(visitors)
        val astKey = ast.class_or_interface.pairKey
        astAndLocalTableMap[astKey] = Pair(ast, localSymbolTable)
    }
    if(debug) {
        println("Inheritance Graph: $classInheritanceGraph")
    }
    // globalTable.detectInheritanceCycle()
    val sortedAstList = topoSort(classInheritanceGraph, astAndLocalTableMap)
    if (debug) {
        println("Sorted AST List: ${sortedAstList.map { it.first.class_or_interface.name }}")
    }
    val globalClassEntryTable = GlobalClassEntryTable()
    for ((ast, localTable) in sortedAstList) {
        globalClassEntryTable.addAstNodeToClassEntryTable(ast, SymbolTable(localTable, globalTable, debug))
    }

    // 3rd pass: ambiguous code here, pass in local symbol table
    // globalClassEntryTable, key = same as global table key
    // localTable within astAndLocalTableMap, build within node???
    for (ast in sortedAstList.map{it.first}) {
        val debugFlag = if (ast.pkg_decl.lst.joinToString(".").contains("java")) false else debug
        val localSymbolTable = LocalSymbolTable(globalTable, debugFlag)
        val symbolTableVisitor = SymbolTableVisitor(localSymbolTable, debugFlag)
        val typeCheckVisitor = TypeCheckVisitor(symbolTableVisitor, globalClassEntryTable, astAndLocalTableMap, classInheritanceGraph)
        val dataflowAnalysisVisitor = DataflowAnalysisVisitor()
        val liveVariableAnalysisVisitor = LiveVariableAnalysisVisitor(symbolTableVisitor)
        val deadVariableAssignmentVisitor = DeadVariableAssignmentVisitor(warningList)
        val reachabilityVisitor = ReachabilityVisitor()
        val translateVisitor = TranslateVisitor(symbolTableVisitor, globalClassEntryTable)
        val visitors = ASTVisitors(
            symbolTableVisitor,
            null,
            typeCheckVisitor,
            null,
            dataflowAnalysisVisitor,
            liveVariableAnalysisVisitor,
            deadVariableAssignmentVisitor,
            reachabilityVisitor,
            translateVisitor,
        )
        ast.accept(visitors)
    }
    // tir
    var staticVariableCount = 0
    val inheritanceMatrix = initializeInheritanceMatrix(classInheritanceGraph)
    val initializeInheritanceMatrixStmts = mutableListOf<Stmt>(
        Move(
            GlobalVar(inHeritanceMatrixName),
            Call(
                Name("__malloc"),
                Const(4 * inheritanceMatrix.size * inheritanceMatrix.size)
            )
        )
    )
    for (i in 0 until inheritanceMatrix.size) {
        for (j in 0 until inheritanceMatrix.size) {
            initializeInheritanceMatrixStmts += Move(
                Mem(
                    BinOp(
                        BinOp.OpType.ADD,
                        GlobalVar(inHeritanceMatrixName),
                        Const(4 * (i * inheritanceMatrix.size + j))
                    )
                ),
                Const(if (inheritanceMatrix[i][j]) 1 else 0)
            )
        }
    }
    staticVariableCount += 1
    val allocateVTable: MutableList<Stmt> = mutableListOf()
    val collisionResolutionFns = mutableListOf<Pair<String, FuncDecl>>()
    for (ast in astList) {
        if (ast.class_or_interface is ClassDecl && !ast.class_or_interface.modifier_list.contains(Modifier.ABSTRACT)) {
            val metadata = classesMetadata[ast.class_or_interface.fullyQualifiedName()]!!
            val cdvPointerName = getCDVName(ast.class_or_interface.fullyQualifiedName())
            val idtPointerName = getIDTName(ast.class_or_interface.fullyQualifiedName())
            staticVariableCount += 2
            val hashTableSize = 2 * roundUpToPow2(metadata.methods.size)
            allocateVTable += listOf(
                Move(
                    GlobalVar(cdvPointerName),
                    Call(
                        Name("__malloc"),
                        Const(4 * metadata.methods.size + 8)
                    )
                ),
                Move(
                    GlobalVar(idtPointerName),
                    Call(
                        Name("__malloc"),
                        Const(4 * hashTableSize + 4)
                    )
                ),
                // Store pointer to idt in cdv memory
                Move(
                    Mem(GlobalVar(cdvPointerName)),
                    GlobalVar(idtPointerName)
                ),
                // Store class id in cdv memory
                Move(
                    Mem(
                        BinOp(
                            BinOp.OpType.ADD,
                            GlobalVar(cdvPointerName),
                            Const(4)
                        )
                    ),
                    Const(classIDs[ast.class_or_interface.fullyQualifiedName()]!!)
                ),
                // Store bitmask in idt memory
                Move(
                    Mem(GlobalVar(idtPointerName)),
                    Const(hashTableSize-1)
                ),
            )
            // Initialize cdv with method pointers: mov [cdv+offset] FuncLabel
            allocateVTable +=
                metadata.methods.map {
                    Move(
                        Mem(
                            BinOp(
                                BinOp.OpType.ADD,
                                GlobalVar(cdvPointerName),
                                Const(metadata.methodOffsets[it.key]!!)
                            )
                        ),
                        Name(
                            getMethodName(it.value.methodClassKey!!, it.key)
                        )
                    )
                }
            // Compute idt hashes for methods
            val idtHashTable = Array(hashTableSize) { _ -> mutableListOf<Method>() }
            metadata.methods.forEach {
                val hash = hashMethod(it.value.getMethodSignatureKey()) and (hashTableSize-1)
                idtHashTable[hash].add(it.value as Method)
            }
            idtHashTable.forEachIndexed { index, methodList ->
                if (methodList.size == 1) {
                    allocateVTable += listOf(
                        Move(
                            Mem(
                                BinOp(
                                    BinOp.OpType.ADD,
                                    GlobalVar(idtPointerName),
                                    Const(4 * index + 4)
                                )
                            ),
                            Name(
                                getMethodName(methodList[0].methodClassKey!!, methodList[0].getMethodSignatureKey())
                            )
                        )
                    )
                } else if (methodList.size >= 2) {
                    val collisionResolutionFnName = getMethodName(ast.class_or_interface.pairKey, "CollisionResolution${index}")
                    var argIdx = 1
                    val fBody = Seq(
                        listOf(
                            Move(Temp("this"), Temp("_ARG0")),
                            Move(Temp("_ID"), Temp("_ARG1"))
                        ) +
                        methodList.map { it ->
                            val matchLabel = generateRandomString()
                            val doesNotMatchLabel = generateRandomString()
                            Seq(
                                listOf(
                                    CJump(
                                        BinOp(
                                            BinOp.OpType.EQ,
                                            Temp("_ID"),
                                            Const(methodIDs[it.getMethodSignatureKey()]!!)
                                        ),
                                        matchLabel,
                                        doesNotMatchLabel
                                    ),
                                    Label(matchLabel)
                                ) +
                                it.parameter_list.map {
                                    argIdx++
                                    Move(Temp("${it.name}$argIdx"), Temp("_ARG$argIdx"))
                                } +
                                listOf(
                                    Return(
                                        Call(
                                            Name(getMethodName(it.methodClassKey!!, it.getMethodSignatureKey())),
                                            listOf(Temp("this"), Temp("_ID")) + it.parameter_list.map { 
                                                Temp("${it.name}$argIdx")
                                            }
                                        )
                                    ),
                                    Label(doesNotMatchLabel)
                                )
                            )
                        }
                    )
                    collisionResolutionFns += Pair(collisionResolutionFnName, FuncDecl(collisionResolutionFnName, -1, fBody))
                    allocateVTable += listOf(
                        Move(
                            Mem(
                                BinOp(
                                    BinOp.OpType.ADD,
                                    GlobalVar(idtPointerName),
                                    Const(4 * index + 4)
                                )
                            ),
                            Name(collisionResolutionFnName)
                        )
                    )
                }
            }
        }
    }
    val staticVariableInitialization = Seq(initializeInheritanceMatrixStmts + allocateVTable + globalClassEntryTable.globalClassEntryTable.flatMap {
            (classKey, classEntryTable) -> classEntryTable.fieldMap.flatMap {
            (_, fieldEntry) ->
        if (fieldEntry.modifier_list.contains(Modifier.STATIC)) {
            staticVariableCount++
            listOf(translateStaticField(classKey, fieldEntry))
        } else {
            listOf()
        }
    }
    } + Return(Const(0)))
    val startFn = FuncDecl("__start", 0, staticVariableInitialization)
    val fnMap = (globalClassEntryTable.globalClassEntryTable.flatMap { (classKey, classEntryTable) ->
        val fnList = mutableListOf<Pair<String, FuncDecl>>()
        for ((methodKey, method) in classEntryTable.methodMap) {
            if (method.methodClassKey!! == classKey) {
                fnList.add(Pair(getMethodName(classKey, methodKey), translateFn(classKey, methodKey, method)))
            }
        }
        for ((methodKey, method) in classEntryTable.constructorMap) {
            if (method.methodClassKey!! == classKey) {
                fnList.add(Pair(getMethodName(classKey, methodKey), translateFn(classKey, methodKey, method)))
            }
        }
        fnList
    }.toList() + collisionResolutionFns.toList() + listOf(Pair("__start", startFn))).toMap()
    if (debug) {
        println("TIR: $fnMap")
    }
    // lir
    val loweredFnMap = fnMap.mapValues { (_, fn) -> FuncDecl(fn.name(), -1, Seq(loweringTranslateStmt(fn.body()))) }.toMutableMap()
    if (testFn != null){
        loweredFnMap[testFn] = FuncDecl(testFn, -1, Seq(propagateConstants((loweredFnMap[testFn]!!.body() as Seq).stmts())))
    }
    return Pair(loweredFnMap, staticVariableCount)
}

fun executeFiles(files: List<String>, mainClassName: String, debug: Boolean, warningList: ArrayList<String>): Int {
    val testClassKey = Pair("", mainClassName)
    val testMainFn = "test_"
    val (loweredFnMap, _) = generateIR(files, debug, warningList, removeNonAlphanumericCharacters(mainClassName + testMainFn))
    return runSimulatorForFunc(loweredFnMap.values.toList(), getMethodName(testClassKey, testMainFn))
}

fun executeAssembly(files: List<String>, mainClassName: String, debug: Boolean, warningList: ArrayList<String>) {
    val testClassKey = Pair("", mainClassName)
    val testMainFn = "test_"
    val testFn = removeNonAlphanumericCharacters(mainClassName + testMainFn)
    val (loweredFnMap, staticVariableCount) = generateIR(files, debug, warningList, testFn)
    val assembly = mutableListOf<String>()
    assembly.add("section .bss")
    assembly.add("staticvar: resd ${staticVariableCount}")
    assembly.add("section .text")
    loweredFnMap.forEach{ (_, f) ->
        assembly += functionToAssembly(f)
    }

    // _start
    assembly += listOf(
        "global _start",
        "_start:",
        "extern __exception",
        "extern __malloc",
        "extern NATIVEjava.io.OutputStream.nativeWrite",
        "call start",
        "call $testFn",
        "mov ebx, eax",
        "mov eax, 1",
        "int 0x80"
    )

    // write to file
    File("output/test.s").printWriter().use { out ->
        assembly.forEach {
            out.println(it)
        }
    }
}

fun runSimulatorForFunc(fnList: List<FuncDecl>, mainFnName: String): Int {
    val c = CompUnit("a")
    for (fn in fnList) {
        c.appendFunc(fn)
    }

    val cv = CheckCanonicalIRVisitor()
    if (!cv.visit(c)) {
        throw Exception("IR is not not canonical")
    }

    val sim = Simulator(c)
    sim.call("__start")
    val result = sim.call(mainFnName)
    println("Result is $result")
    return result
}

fun getAllJavaFilesInDirectory(dirname: String): List<String> {
    return getAllJavaFilesInDirectory(File(dirname))
}
fun getAllJavaFilesInDirectory(directory: File): List<String> {
    return directory.walk().filter { it.isFile && it.name.endsWith(".java") }.map { it.absolutePath }.toList()
}

fun main(args: Array<String>) {
    println("Sanity Check: Hello World!")
    val warningList = ArrayList<String>()
    // get filename of the first argument
    val mainClassName = args[0].split("/").last().split(".").first()

    val files = arrayListOf<String>()

    for (i in args.indices) {
        if(args[i] == "-opt-const-only") {
            constantPropFlag = true
        } else if(args[i] == "-opt-reg-only") {
            useRegAllocFlag = true
        } else if(args[i] == "-opt-none") {
            constantPropFlag = false
            useRegAllocFlag = false
        } else {
            files.add(args[i])
        }
    }



    try {
        executeAssembly(files, mainClassName, false, warningList)
    } catch (e : Exception) {
        exitProcess(42)
    }
    if (warningList.isNotEmpty()) {
        println("Warnings:")
        for (warning in warningList) {
            println(warning)
        }
        exitProcess(43)
    }
}