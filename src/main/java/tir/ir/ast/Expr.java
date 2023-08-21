package tir.ir.ast;

import Translate.AbstractAssemblyIns;

import java.util.ArrayList;
import java.util.List;

public interface Expr extends Node {
    boolean isConstant();

    int constant();

    List<AbstractAssemblyIns> instructions();
    String outputRegister();
    int tileCost();
}
