// JOOS1:PARSER_WEEDER,PARSER_EXCEPTION,SYNTAX_ERROR
// JOOS2:PARSER_WEEDER,PARSER_EXCEPTION,SYNTAX_ERROR
// JAVAC:UNKNOWN
// 
/**
 * Parser/weeder:
 * - Non-statement-expression not allowed in init clause of for loop
 */
public class Je_1_For_NonStmtExpInInit {

    public Je_1_For_NonStmtExpInInit() {}

    public static int test() {
	int x = 0;
	for (7; x<10; x=x+1) {}
	return 123;
    }

}
