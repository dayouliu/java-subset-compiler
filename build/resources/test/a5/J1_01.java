// PARSER_WEEDER,CODE_GENERATION
public class J1_01 extends Base implements I1, I2 {
	public int x = 3;

	public int z = 16;

	public int hashCode() {
		return 5;
	}

	public int a() {
		return 20;
	}

	public int b() {
		return 25;
	}

	public int c() {
		return 10;
	}

	public int e() {
		return 10;
	}

	public int abcdefg() {
		return 10;
	}

    public J1_01() {
		this.x = 10;
		this.y = 5;
	}

	public int getX(Object y) {
		return this.x + y.hashCode();
	}

    public static int test() {
		J1_01 j = new J1_01();
		j.x = j.x + 7;
		Object o = j;
		int r1 = J1_01.m0(0);
		int r2 = J1_01.m0(1);
		int r3 = J1_01.m0(100);
		int r4 = J1_01.m1(0);
		int r5 = J1_01.m1(1);
		int r6 = J1_01.m1(100);

		int r = 100;
		if (o instanceof J1_01) r = j.getX(o);

		I1 i1 = j;
		r = r + i1.a();
		I2 i2 = j;
		r = r + i2.b() + i2.abcdefg();

		Abstract a = j;
		r = r + a.c() + a.d();
		Base b = j;
		r = r + b.y + b.z + b.e();

		Base b2 = new Base();
		I1 i12 = b2;
		r = r + b2.z + i12.a();

		if (r1==9) r=r+1;
		if (r2==6) r=r+1;
		if (r3==6) r=r+1;

		if (r4==6) r=r+1;
		if (r5==9) r=r+1;
		if (r6==6) r=r+1;
		String s = "abc" + "def123456";
		r = r + s.length();
		System.out.println("Hello, World!");
//		String s2 = s + "def";
//		r = r + s2.length();

		return 117+r;
    }

    public static int m0(int a) {
	int r = 0;
	if (a==0) r=r+1;
	if (a!=0) r=r+2;
	if (!(a==0)) r=r+4;
	if (!(a!=0)) r=r+8;
	return r;
    }

    public static int m1(int a) {
	int r = 0;
	if (a==1) r=r+1;
	if (a!=1) r=r+2;
	if (!(a==1)) r=r+4;
	if (!(a!=1)) r=r+8;
	return r;
    }
}
