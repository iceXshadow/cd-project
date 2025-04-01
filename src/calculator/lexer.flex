/* Calculator Lexer Specification */
package calculator;

import java_cup.runtime.*;

%%

%class Lexer
%unicode
%cup
%line
%column

%{
  private Symbol symbol(int type) {
    return new Symbol(type, yyline, yycolumn);
  }
  
  private Symbol symbol(int type, Object value) {
    return new Symbol(type, yyline, yycolumn, value);
  }
%}

/* Definitions */
LineTerminator = \r|\n|\r\n
WhiteSpace     = {LineTerminator} | [ \t\f]
Digit          = [0-9]
Integer        = {Digit}+
Double         = {Digit}+\.{Digit}* | {Digit}*\.{Digit}+

%%

/* Operators */
"+"            { return symbol(sym.PLUS); }
"-"            { return symbol(sym.MINUS); }
"*"            { return symbol(sym.TIMES); }
"/"            { return symbol(sym.DIVIDE); }
"("            { return symbol(sym.LPAREN); }
")"            { return symbol(sym.RPAREN); }
"="            { return symbol(sym.EQUALS); }
";"            { return symbol(sym.SEMI); }

/* Numbers */
{Integer}      { return symbol(sym.NUMBER, Integer.valueOf(yytext())); }
{Double}       { return symbol(sym.NUMBER, Double.valueOf(yytext())); }

/* Whitespace */
{WhiteSpace}   { /* Ignore */ }

/* Error fallback */
.              { System.err.println("Illegal character: " + yytext() + 
                                   " at line " + yyline + ", column " + yycolumn); }