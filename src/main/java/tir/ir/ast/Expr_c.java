package tir.ir.ast;

import Translate.AbstractAssemblyIns;
import tir.ir.visit.CheckCanonicalIRVisitor;

import java.util.ArrayList;
import java.util.List;

/**
 * An intermediate representation for expressions
 */
public abstract class Expr_c extends Node_c implements Expr {
    @Override
    public CheckCanonicalIRVisitor checkCanonicalEnter(
            CheckCanonicalIRVisitor v) {
        return v.enterExpr();
    }

    @Override
    public boolean isCanonical(CheckCanonicalIRVisitor v) {
        return v.inExpr() || !v.inExp();
    }

    @Override
    public boolean isConstant() {
        return false;
    }

    @Override
    public int constant() {
        throw new UnsupportedOperationException();
    }

    public List<AbstractAssemblyIns> instructions() { return instructions; }
    public String outputRegister() { return outputRegister; }
    public int tileCost() { return tileCost; }
}
