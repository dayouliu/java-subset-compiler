import java_cup.runtime.*;

%%
%public
%class Lexer
%cup
%unicode
%pack

%{
    class LexingError extends java.io.IOException {
        LexingError(String str) {
            super(str);
        }
    }
    private Symbol symbol(int id) {
        return new Symbol(id);
    }
    private Symbol symbol(int id, Object value) {
        return new Symbol(id, value);
    }

    StringBuffer readString = new StringBuffer();
%}

%state STRINGLITERAL, CHARLITERAL

Whitespace = [ \t\f\r\n]
Letter = [a-zA-Z]
Digit = [0-9]
Identifier = {Letter}({Digit}|{Letter}|_)*
NNInteger = "0" | [1-9]{Digit}*
Float = {Digit}+ "." {Digit}+
String = \".*[^\\]\"
Char = "'(. | \\{Letter}+)'"

SingleLineComment = "//" ~\n
MultiLineComment = "/*" ~"*/" /* includes java doc comments, ~ is jflex notation */
Comment = {SingleLineComment} | {MultiLineComment}

%%

<STRINGLITERAL> {
    \"                      { yybegin(YYINITIAL); return symbol(sym.STRING_LITERAL, readString.toString()); }
    [^\"\\\n\r]             { readString.append(yytext()); }
    \\ "b"                  { readString.append('\b'); }
    \\ "t"                  { readString.append('\t'); }
    \\ "n"                  { readString.append('\n'); }
    \\ "f"                  { readString.append('\f'); }
    \\ "r"                  { readString.append('\r'); }
    \\ \"                   { readString.append('\"'); }
    \\ \'                   { readString.append('\''); }
    \\ \\                   { readString.append('\\'); }
    \\ [0-7][0-7]?[0-7]?    {   /* octalescapes */
                                String cur = yytext().substring(1, yytext().length());
                                int val = Integer.parseInt(cur, 8);
                                if (val > 255) {
                                     cur = yytext().substring(1, yytext().length()-1);
                                     val = Integer.parseInt(cur, 8);
                                     readString.append((char)val);
                                     readString.append(yytext().substring(3, 4));
                                } else {
                                    readString.append((char)val);
                                }
                            }
    \\ .                    { throw new LexingError("Illegal escape char in string"); }
    [^]                     { throw new LexingError("String is not properly terminated"); }
}

<CHARLITERAL> {
    [^\'\\\n\r] \'          { yybegin(YYINITIAL); return symbol(sym.CHAR_LITERAL, yytext().charAt(0)); }
    \\ "b" \'               { yybegin(YYINITIAL); return symbol(sym.CHAR_LITERAL, '\b'); }
    \\ "t" \'               { yybegin(YYINITIAL); return symbol(sym.CHAR_LITERAL, '\t'); }
    \\ "n" \'               { yybegin(YYINITIAL); return symbol(sym.CHAR_LITERAL, '\n'); }
    \\ "f" \'               { yybegin(YYINITIAL); return symbol(sym.CHAR_LITERAL, '\f'); }
    \\ "r" \'               { yybegin(YYINITIAL); return symbol(sym.CHAR_LITERAL, '\r'); }
    \\ \" \'                { yybegin(YYINITIAL); return symbol(sym.CHAR_LITERAL, '\\'); }
    \\ \' \'                { yybegin(YYINITIAL); return symbol(sym.CHAR_LITERAL, '\''); }
    \\ \\ \'                { yybegin(YYINITIAL); return symbol(sym.CHAR_LITERAL, '\\'); }
    \\ [0-7][0-7]?[0-7]? \' {   /* octalescapes */
                                yybegin(YYINITIAL);
                                int val = Integer.parseInt(yytext().substring(1, yytext().length()-1), 8);
                                if (0 <= val && val <= 255) {
                                     return symbol(sym.CHAR_LITERAL, (char)val);
                                }
                                throw new LexingError("invalid octal number");
                            }
    \\ .                    { throw new LexingError("Illegal escape char"); }
    [^]                     { throw new LexingError("char is not properly terminated"); }
}

<YYINITIAL> {
    {Whitespace}    { /* ignore */ }
    {Comment}       { /* ignore */ }

    "extends" 		{ return symbol(sym.EXTENDS); }
    "implements" 	{ return symbol(sym.IMPLEMENTS); }
    "static" 		{ return symbol(sym.STATIC); }
    "import" 		{ return symbol(sym.IMPORT); }
    "package" 		{ return symbol(sym.PACKAGE); }
    "public" 		{ return symbol(sym.PUBLIC); }
    "private" 		{ return symbol(sym.PRIVATE); }
    "interface" 	{ return symbol(sym.INTERFACE); }
    "class" 		{ return symbol(sym.CLASS); }
    "default" 		{ return symbol(sym.DEFAULT); }
    "const" 		{ return symbol(sym.CONST); }
    "new" 			{ return symbol(sym.NEW); }

    "("             { return symbol(sym.LEFT_PAREN); }
    ")"             { return symbol(sym.RIGHT_PAREN); }
    "{"             { return symbol(sym.LEFT_CURLY_BRACE); }
    "}"             { return symbol(sym.RIGHT_CURLY_BRACE); }
    "["             { return symbol(sym.LEFT_SQUARE_BRACKET); }
    "]"             { return symbol(sym.RIGHT_SQUARE_BRACKET); }
    ";"             { return symbol(sym.SEMICOLON); }
    ","             { return symbol(sym.COMMA); }
    "."             { return symbol(sym.DOT); }

    "++" 			{ throw new LexingError("++ not supported"); }
    "--" 			{ throw new LexingError("-- not supported"); }
    "<<"            { throw new LexingError("<< not supported"); }
    ">>"            { throw new LexingError(">> not supported"); }
    "+="            { throw new LexingError("+= not supported"); }
    "-="            { throw new LexingError("-= not supported"); }
    "*="            { throw new LexingError("*= not supported"); }
    "/="            { throw new LexingError("/= not supported"); }
    "&="            { throw new LexingError("&= not supported"); }
    "|="            { throw new LexingError("|= not supported"); }
    "^="            { throw new LexingError("^= not supported"); }
    "%="            { throw new LexingError("%= not supported"); }

    "+" 			{ return symbol(sym.PLUS); }
    "-" 			{ return symbol(sym.MINUS); }
    "*" 			{ return symbol(sym.STAR); }
    "/" 			{ return symbol(sym.DIVIDE); }
    "%" 			{ return symbol(sym.MODULO); }

    "=="            { return symbol(sym.DOUBLE_EQUALS); }
    "<=" 			{ return symbol(sym.LESS_THAN_OR_EQUAL); }
    ">=" 			{ return symbol(sym.GREATER_THAN_OR_EQUAL); }
    "!=" 			{ return symbol(sym.NOT_EQUAL); }
    "<" 			{ return symbol(sym.LESS_THAN); }
    ">" 			{ return symbol(sym.GREATER_THAN); }
    "!" 			{ return symbol(sym.NOT); }
    "="             { return symbol(sym.ASSIGNMENT_OPERATOR); }
    "&&"            { return symbol(sym.AND); }
    "||"            { return symbol(sym.OR); }
    "&"             { return symbol(sym.AND); }
    "|"             { return symbol(sym.OR); }

    "protected" 	{ return symbol(sym.PROTECTED); }
    "abstract" 		{ return symbol(sym.ABSTRACT); }
    "final" 		{ return symbol(sym.FINAL); }
    "native" 		{ return symbol(sym.NATIVE); }

    "super" 		{ return symbol(sym.SUPER); }

    "return" 		{ return symbol(sym.RETURN) ;}
    "void" 			{ return symbol(sym.VOID); }

    "if"            { return symbol(sym.IF); }
    "else" 			{ return symbol(sym.ELSE); }
    "while" 		{ return symbol(sym.WHILE); }
    "for" 			{ return symbol(sym.FOR); }

    "instanceof"    { return symbol(sym.INSTANCEOF); }

    "boolean" 		{ return symbol(sym.BOOLEAN); }
    "int" 			{ return symbol(sym.INT); }
    "char" 			{ return symbol(sym.CHAR); }
    "byte" 			{ return symbol(sym.BYTE); }
    "short" 		{ return symbol(sym.SHORT); }

    "true"          { return symbol(sym.TRUE); }
    "false"         { return symbol(sym.FALSE); }

    "null"          { return symbol(sym.NULL); }
    "this" 			{ return symbol(sym.THIS); }

    ":"             { throw new LexingError(": not supported"); }

    \"              { readString.delete(0, readString.length()); yybegin(STRINGLITERAL); }
    \'              { yybegin(CHARLITERAL); }

    {NNInteger}     { return symbol(sym.NON_NEGATIVE_INT_VAL, yytext()); }

    /* java 1.3 keywords not in joos */
    "break"         { throw new LexingError("break Java token not supported by JOOS"); }
    "case"          { throw new LexingError("case Java token not supported by JOOS"); }
    "continue"      { throw new LexingError("continue Java token not supported by JOOS"); }
    "do"            { throw new LexingError("do Java token not supported by JOOS"); }
    "double"        { throw new LexingError("continue Java token not supported by JOOS"); }
    "finally"       { throw new LexingError("finally Java token not supported by JOOS"); }
    "float"         { throw new LexingError("float Java token not supported by JOOS"); }
    "long"          { throw new LexingError("long token not supported by JOOS"); }
    "strictfp"      { throw new LexingError("strictfp token not supported by JOOS"); }
    "switch"        { throw new LexingError("switch token not supported by JOOS"); }
    "synchronized"  { throw new LexingError("synchronized token not supported by JOOS"); }
    "transient"     { throw new LexingError("transient token not supported by JOOS"); }
    "throw"         { throw new LexingError("throw token not supported by JOOS"); }
    "throws"        { throw new LexingError("throws token not supported by JOOS"); }
    "try"           { throw new LexingError("try token not supported by JOOS"); }
    "volatile"      { throw new LexingError("volatile token not supported by JOOS"); }
    "goto"          { throw new LexingError("goto token not supported by JOOS"); }

    {Identifier}    { return symbol(sym.ID, yytext()); }
    .               { throw new LexingError("Invalid token encountered"); }
}


