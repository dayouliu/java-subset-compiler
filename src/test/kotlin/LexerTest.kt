import Lexer.LexingError
import org.junit.jupiter.api.assertThrows
import java.io.File
import java.io.FileReader
import kotlin.test.Test
import kotlin.test.Ignore
import kotlin.test.assertEquals

internal class LexerTest {
    fun lexFileWithValue(filename: String) :  ArrayList<Pair<Int, String>> {
        val lexer = Lexer(FileReader("src/test/resources/lexer/" + filename))
        return readByTokensWithValue(lexer)
    }

//    fun constructExpected(symbolArray: ArrayList<Pair<Int, String>>) :
    @Test
    fun testComments() {
        val lexer = Lexer(FileReader("src/test/resources/lexer/test_comments.txt"))
        val actual = readByTokens(lexer)
        val expected = arrayListOf<Int>(sym.IF, sym.IF, sym.IF, sym.IF, sym.EOF)
        assertEquals(expected, actual)
    }

    @Test
    fun testStrings() {
        val actual = lexFileWithValue("test_strings.txt")
        val expected = arrayListOf<Pair<Int, String>>(
            Pair(sym.IF, "null"),
            Pair(sym.STRING_LITERAL, "abc 123 \n abc \t {"),
            Pair(sym.IF, "null"),
            Pair(sym.STRING_LITERAL, "xyz 456 \" abc \t"),
            Pair(sym.EOF, "null"))
        assertEquals(expected, actual)
    }

    @Test
    fun testStringsInvalidEscapeChar() {
        val lexer = Lexer(FileReader("src/test/resources/lexer/test_strings_invalid.txt"))
        val error = assertThrows<LexingError> { readByTokensWithValue(lexer) }
        assertEquals("Illegal escape char in string", error.message)
    }

    @Test
    fun testStringsInvalidUnterminated() {
        val lexer = Lexer(FileReader("src/test/resources/lexer/test_strings_invalid2.txt"))
        val error = assertThrows<LexingError> { readByTokensWithValue(lexer) }
        assertEquals("String is not properly terminated", error.message)
    }

    @Test
    fun testChars() {
        val actual = lexFileWithValue("test_chars.txt")
        val expected = arrayListOf<Pair<Int, String>>(
            Pair(sym.IF, "null"),
            Pair(sym.CHAR_LITERAL, "a"),
            Pair(sym.IF, "null"),
            Pair(sym.CHAR_LITERAL, "\n"),
            Pair(sym.EOF, "null"))
        assertEquals(expected, actual)
    }

    @Test
    fun testJoosFeatures() {
        File("src/test/resources/joos_features").walkTopDown().forEach {
            @Test
            if (it.isFile) {
                val lexer = Lexer(FileReader(it))
                println(it)
                readByTokensWithValue(lexer)
                println()
            }
        }
    }
}