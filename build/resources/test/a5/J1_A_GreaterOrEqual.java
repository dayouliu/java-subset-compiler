// CODE_GENERATION
/* CodeGeneration:
 * 
 * Code generation must preserve semantics.
 */

public class J1_A_GreaterOrEqual {
	public J1_A_GreaterOrEqual() {}
	
	public static int test() {
		int a = 1;
		int b = 2;
		boolean c = b >= a;
		if (c) {
			return 123;
		}
		return 42;
	}
}
