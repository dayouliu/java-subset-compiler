import java_cup.runtime.Symbol
import org.junit.jupiter.api.DynamicTest
import org.junit.jupiter.api.TestFactory
import org.junit.jupiter.api.assertThrows
import java.io.File
import java.io.FileReader
import kotlin.test.Test
import kotlin.test.assertEquals
internal class VisitorsTest {
    fun getAST(filePath: String) : Symbol {
        val lexer = Lexer(FileReader(filePath))
        val lexer2 = Lexer(FileReader(filePath))
        val fileReader = FileReader(filePath)
        print(fileReader.readText())
        val ret = parser(lexer).parse()
        val result = ret.value
        if (result is Java) {
            println("RET.VALUE = : ${result.class_or_interface.name}")
        }
        return ret
    }

//    @Test
//    fun testSymbolTableVisitorSimple() {
//        val ast = getAST("src/test/resources/visitors/sym.txt").value as Java
//        val visitors = ASTVisitors(SymTableVisitor(GlobalSymbolTable(), true), TypeCheckVisitor())
//        ast.accept(visitors)
//        //println(visitors.symTableVisitor.debugSymTableHistory)
//    }
//
//    @Test
//    fun testSymbolTableVisitorRedeclare() {
//        val ast = getAST("src/test/resources/visitors/redeclare.txt").value as Java
//        val visitors = ASTVisitors(SymTableVisitor(true), TypeCheckVisitor())
//        assertThrows<Exception> { ast.accept(visitors) }
//        //println(visitors.symTableVisitor.debugSymTableHistory)
//    }
//
//    @Test
//    fun testSymbolTableVisitorRedeclare2() {
//        val ast = getAST("src/test/resources/visitors/redeclare2.txt").value as Java
//        val visitors = ASTVisitors(SymTableVisitor(true), TypeCheckVisitor())
//        assertThrows<Exception> { ast.accept(visitors) }
//        //println(visitors.symTableVisitor.debugSymTableHistory)
//    }
//
//    @Test
//    fun testSymbolTableDirectory() {
//        val asts = parseDirectory(getAllJavaFilesInDirectory("src/test/resources/a2/J1_3_ImportOnDemand_DefaultImportInPresenceOfOtherImport"))
//        val visitors = ASTVisitors(SymTableVisitor(true), TypeCheckVisitor())
//        assertThrows<Exception> {
//            for (ast in asts) {
//                ast.accept(visitors)
//            }
//        }
//        //println(visitors.symTableVisitor.debugSymTableHistory)
//    }
}