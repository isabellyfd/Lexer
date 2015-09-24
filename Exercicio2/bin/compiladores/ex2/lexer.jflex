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
%{
int tokensQtde = 0;  
%}
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
keyword = class| public | extends | static | void | boolean | void | while | if | else | return | false | true | this | new




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
{ tokensQtde++; return new Delimiters(yytext()); }
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
 { tokensQtde++; System.out.print(yytext()) }
{keyword}|
"int"							{ tokensQtde++; return new KeyWords(yytext()); }
{identifier}					{ tokensQtde++; return new Identifier(yytext()); }
{float}							{ tokensQtde++; return new Number(yytext(), Tag.TAG_FLOAT); }
{integer} 						{ tokensQtde++; return new Number(yytext(), Tag.TAG_INT); }
{whitespace}|{comment}   		{ /* Ignore */ }

