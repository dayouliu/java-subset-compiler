import java_cup.runtime.Symbol
import org.junit.jupiter.api.DynamicTest
import org.junit.jupiter.api.TestFactory
import org.junit.jupiter.api.assertThrows
import java.io.File
import java.io.FileReader
import kotlin.test.Test
import kotlin.test.assertEquals
internal class ASTTest {
//    val stdlibDir: String = "src/test/resources/5.1"
//    fun getAST(filePath: String) : Symbol {
//        val lexer = Lexer(FileReader(filePath))
//        val fileReader = FileReader(filePath)
//        print(fileReader.readText())
////        readByTokensWithValue(lexer2)
//        val ret = parser(lexer).parse()
//        val result = ret.value
//        if (result is Java) {
//            println(result)
//        }
//        return ret
//    }
//
//    @Test
//    fun testParseASTSimple() {
//        val warningList = ArrayList<String>()
//        parseDirectory(getAllJavaFilesInDirectory(stdlibDir) + listOf("src/test/resources/a4/J1_reachableIfBody.java"), true, warningList)
//    }
//
//    @Test
//    fun testSingleDirectory() {
//        val warningList = ArrayList<String>()
//        parseDirectory(getAllJavaFilesInDirectory(stdlibDir) + getAllJavaFilesInDirectory("src/test/resources/a4/J1_7_Reachability_IfThenElse_InConstructor.java "), true, warningList)
//    }
//
//    @Test
//    fun testCyclicInheritance() {
//        assertThrows<Exception> {
//            val warningList = ArrayList<String>()
//            parseDirectory(getAllJavaFilesInDirectory(stdlibDir) + getAllJavaFilesInDirectory("src/test/resources/a2/Je_4_SelfDependency_CircularExtends_2"), true, warningList)
//        }
//    }
//
//    @Test
//    fun testStdLib() {
//        println(getAllJavaFilesInDirectory(stdlibDir))
//        val warningList = ArrayList<String>()
//        parseDirectory(getAllJavaFilesInDirectory(stdlibDir), true, warningList)
//    }
//
//    @TestFactory
//    fun testJoosFeatureAST() = File("src/test/resources/joos_features").walkTopDown().flatMap { it ->
//        if (it.isFile) {
//            listOf(DynamicTest.dynamicTest(it.name) {
//                println(it)
//                getAST(it.path)
//                println()
//                assertEquals(1, 1)
//            })
//        } else {
//            emptyList()
//        }
//    }.iterator()
//
//    @TestFactory
//    fun testPublicTest() = File("src/test/resources/a5").listFiles()?.flatMap { it ->
//        val name = it.name
//        if (it.isFile) {
//            if (name.startsWith("J1") || name.startsWith("J2")) {
//                listOf(DynamicTest.dynamicTest(it.name) {
//                    println("\n\n")
//                    val warningList = ArrayList<String>()
//                    parseDirectory(getAllJavaFilesInDirectory(stdlibDir) + listOf(it.absolutePath), true, warningList)
//                    assertEquals(0, warningList.size)
//                })
//            } else if (name.startsWith("Jw")) {
//                    listOf(DynamicTest.dynamicTest(it.name) {
//                    println("\n\n")
//                    val warningList = ArrayList<String>()
//                    parseDirectory(getAllJavaFilesInDirectory(stdlibDir) + listOf(it.absolutePath), true, warningList)
//                    assert(warningList.size > 0)
//                })
//            } else {
//                listOf(DynamicTest.dynamicTest(it.name) {
//                    assertThrows<Exception> {
//                        val warningList = ArrayList<String>()
//                        parseDirectory(getAllJavaFilesInDirectory(stdlibDir) + listOf(it.absolutePath), true, warningList)
//                    }
//                })
//            }
//        } else if (it.isDirectory) {
//            if (name.startsWith("J1") || name.startsWith("J2")) {
//                listOf(DynamicTest.dynamicTest(it.name) {
//                    println("\n\n")
//                    val warningList = ArrayList<String>()
//                    parseDirectory(getAllJavaFilesInDirectory(stdlibDir) + getAllJavaFilesInDirectory(it),true, warningList)
//                    println()
//                    assertEquals(0, warningList.size)
//                })
//            } else if (name.startsWith("Jw")) {
//                listOf(DynamicTest.dynamicTest(it.name) {
//                    println("\n\n")
//                    val warningList = ArrayList<String>()
//                    parseDirectory(getAllJavaFilesInDirectory(stdlibDir) + getAllJavaFilesInDirectory(it), true, warningList)
//                    assert(warningList.size > 0)
//                })
//            } else {
//                listOf(DynamicTest.dynamicTest(it.name) {
//                    println(it)
//                    assertThrows<Exception> {
//                        val warningList = ArrayList<String>()
//                        parseDirectory(getAllJavaFilesInDirectory(stdlibDir) + getAllJavaFilesInDirectory(it), true, warningList)
//                    }
//                    println()
//                })
//            }
//        } else {
//            emptyList()
//        }
//    }?.iterator()
}