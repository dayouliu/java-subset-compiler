package tir.ir.ast;

/**
 * An intermediate representation for a global variable
 * GLOBALVAR(name)
 */
public class GlobalVar extends Expr_c {
    private String name;

    /**
     * @param name name of this temporary register
     */
    public GlobalVar(String name) {
        this.name = name;
    }

    public String name() {
        return name;
    }

    @Override
    public String label() {
        return "GlobalVar(" + name + ")";
    }
}
