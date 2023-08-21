// PARSER_WEEDER,CODE_GENERATION
/**
 * Parser/weeder:
 * - Tests the priority of instanceof
 */
public class J1_1_Instanceof_InLazyExp{

    public J1_1_Instanceof_InLazyExp(){}

    public static int test(){
	Object a = new J1_1_Instanceof_InLazyExp();
	return a.hashCode();
    }

}
