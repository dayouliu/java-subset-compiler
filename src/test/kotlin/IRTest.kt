import org.junit.jupiter.api.DynamicTest
import org.junit.jupiter.api.TestFactory
import org.junit.jupiter.api.assertThrows
import java.io.File
import kotlin.test.Test
import kotlin.test.assertEquals

internal class IRTest {
    private val stdlibDir: String = "src/test/resources/6.1"
    @Test
    fun testParseASTSimple() {
        val warningList = ArrayList<String>()
        val debug = true
        val testFile = "src/test/resources/a6/J1_A_String_ByteShortCharInt.java"
        val files = getAllJavaFilesInDirectory(stdlibDir) + listOf(testFile)
        executeFiles(files, File(testFile).nameWithoutExtension, debug, warningList)
    }

    @Test
    fun testExecuteDirectory() {
        val warningList = ArrayList<String>()
        val debug = true
        val testDir = "src/test/resources/a6/J1_Kosaraju"
        val files = getAllJavaFilesInDirectory(stdlibDir) + getAllJavaFilesInDirectory(testDir)
        executeFiles(files, "Main", debug, warningList)
    }

    @Test
    fun testParseASTSimpleAssembly() {
        val warningList = ArrayList<String>()
        val debug = true
        val files = getAllJavaFilesInDirectory(stdlibDir) + listOf("src/test/resources/a6/J1_A_String_ByteShortCharInt.java")
        executeAssembly(files, "J1_A_String_ByteShortCharInt", debug, warningList)
    }

    @Test
    fun testParseASTSimpleAssembly1() {
        val warningList = ArrayList<String>()
        val debug = true
        val files = getAllJavaFilesInDirectory(stdlibDir) + listOf("src/test/resources/a6/J1_typecheck_array.java")
        executeAssembly(files, "J1_typecheck_array", debug, warningList)
    }

    @Test
    fun testParseASTSimpleAssembly2() {
        val warningList = ArrayList<String>()
        val debug = true
        val files = getAllJavaFilesInDirectory(stdlibDir) + listOf("src/test/resources/a6/J1_A_String_ByteShortCharInt.java")
        executeAssembly(files, "J1_A_String_ByteShortCharInt", debug, warningList)
    }
    @Test
    fun testParseASTSimpleAssembly3() {
        val warningList = ArrayList<String>()
        val debug = true
        val files = getAllJavaFilesInDirectory(stdlibDir) + listOf("src/test/resources/a6/J1_1_Instanceof_OfAdditiveExpression.java")
        executeAssembly(files, "J1_1_Instanceof_OfAdditiveExpression", debug, warningList)
    }

    @Test
    fun testParseASTSimpleAssembly4() {
        val warningList = ArrayList<String>()
        val debug = true
        val files = getAllJavaFilesInDirectory(stdlibDir) + listOf("src/test/resources/a5/J1_bubblesort_benchmark.java")
        executeAssembly(files, "J1bubblesortbenchmark", debug, warningList)
    }

    @Test
    fun testParseASTSimpleAssembly5() {
        val warningList = ArrayList<String>()
        val debug = true
        val files = getAllJavaFilesInDirectory(stdlibDir) + listOf("src/test/resources/a6/J1_WildConcat.java")
        executeAssembly(files, "J1_WildConcat", debug, warningList)
    }

    @TestFactory
    fun testPublicTest() = File("src/test/resources/a6").listFiles()?.flatMap { it ->
        val name = it.name
        if (it.isFile) {
            if (name.startsWith("J1e")) {
                //ignore
                listOf(DynamicTest.dynamicTest(it.name) {
                    println("\n\n")
                    val warningList = ArrayList<String>()
                    val testName = it.name.split(".")[0]
                    assertEquals(1,2)
//                    assertThrows<Exception> {
//                        try {
//                            executeFiles(getAllJavaFilesInDirectory(stdlibDir) + listOf(it.absolutePath), testName, true, warningList)
//                        } catch (ex: SecurityException) {
//                            throw Exception("Security Exception: ${ex.message}")
//                        }
//                    }
                })
            }
            else if (name.startsWith("J1") || name.startsWith("J2")) {
                listOf(DynamicTest.dynamicTest(it.name) {
                    println("\n\n")
                    val warningList = ArrayList<String>()
                    val debug = true
                    val testFile = it.absolutePath
                    val files = getAllJavaFilesInDirectory(stdlibDir) + listOf(testFile)
                    val result = executeFiles(files, File(testFile).nameWithoutExtension, debug, warningList)
                    assertEquals(123, result)
                })
            }else {
                emptyList()
            }
        } else if (it.isDirectory) {
            if (name.startsWith("J1e")) {
                //ignore
                listOf(DynamicTest.dynamicTest(it.name) {
                    println("\n\n")
                    val warningList = ArrayList<String>()
                    val testName = it.name.split(".")[0]
                    assertEquals(1,2)
//                    assertThrows<Exception> {
//                        try {
//                            executeFiles(getAllJavaFilesInDirectory(stdlibDir) + listOf(it.absolutePath), testName, true, warningList)
//                        } catch (ex: SecurityException) {
//                            throw Exception("Security Exception: ${ex.message}")
//                        }
//                    }
                })
            }
            else if (name.startsWith("J1") || name.startsWith("J2")) {
                listOf(DynamicTest.dynamicTest(it.name) {
                    println("\n\n")
                    val warningList = ArrayList<String>()
                    val testName = it.name.split(".")[0]
                    val result = executeFiles(getAllJavaFilesInDirectory(stdlibDir) + getAllJavaFilesInDirectory(it), testName, true, warningList)
                    assertEquals(123, result)
                })
            }else {
                listOf(DynamicTest.dynamicTest(it.name) {
                    println("\n\n")
                    val warningList = ArrayList<String>()
                    val testName = it.name.split(".")[0]
                    assertThrows<Exception> {
                        try {
                            executeFiles(getAllJavaFilesInDirectory(stdlibDir) + getAllJavaFilesInDirectory(it), testName, true, warningList)
                        } catch (ex: SecurityException) {
                            throw Exception("Security Exception: ${ex.message}")
                        }
                    }
                })
            }
        } else {
            emptyList()
        }
    }?.iterator()
}