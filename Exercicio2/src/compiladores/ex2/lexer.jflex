package compiladores.ex2;

import compiladores.ex2.Delimiters;
import compiladores.ex2.Identifier;
import compiladores.ex2.KeyWords;
import compiladores.ex2.Number;
import compiladores.ex2.Op;
import compiladores.ex2.Tag;

%%

%line
%column
%unicode
%standalone
%public 
%class Lexer
%type Token
%eofclose

whitespace = [\n\t ]
comment = "/*"~"*/"
digit = [0-9]
integer = [1-9]{digit}* | 0
float = {integer}.{digit}+
letter = [A-z]|[a-z]
underline = _
identifier = ( {underline} | {letter} )( {letter}* | {integer}* | {digit}* )

%%

";"|
"."|
"="|
"("|
")"|
"{"|
"}"|
"["|
"]" 
{ return new Delimiters(yytext()); }
"&&"|
"=="|
"!="|
"<"|
"<="|
">="|
"-"|
"%"| 
"||"|
"+" |
"*" |
"/" |
 "!"
 { System.out.print(yytext()) }
"class"|
"public"|
"int"|
"static"|
"void"|
"boolean"|
"while"|
"if"|
"else"|
"return"|
"false"|
"true"|
"this"|
"new"
{ return new KeyWords(yytext()); }
{identifier}					{ return new Identifier(yytext()); }
{float}							{ return new Number(yytext(), Tag.TAG_FLOAT); }
{integer} 						{ return new Number(yytext(), Tag.TAG_INT); }
{whitespace}|{comment}   		{ /* Ignore */ }