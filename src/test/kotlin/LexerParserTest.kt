import org.junit.jupiter.api.DynamicTest
import org.junit.jupiter.api.TestFactory
import org.junit.jupiter.api.assertThrows
import java.io.File
import kotlin.test.Test
import kotlin.test.assertEquals

internal class LexerParserTest {
    @Test
    fun testParsingSingle() {
        val value = parseFile(File("src/test/resources/simple.txt"))
        println("symbol: ${value}")
    }

    @TestFactory
    fun testJoosParsing() = File("src/test/resources/joos_features").walkTopDown().flatMap { it ->
        if (it.isFile) {
            listOf(DynamicTest.dynamicTest(it.name) {
                println(it)
                parseFile(it)
                println()
                assertEquals(1, 1)
            })
        } else {
            emptyList()
        }
    }.iterator()


    @TestFactory
    fun testPublicTest() = File("src/test/resources/a1").walkTopDown().flatMap { it ->
        val fileName = it.name;
        if (it.isFile) {
            if (fileName.startsWith("J1") || fileName.startsWith("J2")) {
                listOf(DynamicTest.dynamicTest(it.name) {
                    println(it)
                    parseFile(it)
                    println()
                    assertEquals(1, 1)
                })
            } else {
                listOf(DynamicTest.dynamicTest(it.name) {
                    println(it)
                    assertThrows<Exception> {parseFile(it)}
                    println()
                })
            }

        } else {
            emptyList()
        }
    }.iterator()
}