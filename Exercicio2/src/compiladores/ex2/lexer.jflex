package compiladores.ex2;


%%

%line
%column
%unicode
%standalone
%public 
%class Lexer
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
{System.out.println( (new Delimiters(yytext())).toString()); }
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
 { System.out.println( (new Op(yytext())).toString()); }
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
{ System.out.println( (new KeyWords(yytext())).toString()); }
{identifier}					{ System.out.println ( (new Identifier(yytext())).toString()); }
{float}							{ System.out.println ((new Number(yytext(), Tag.TAG_FLOAT)).toString()); }
{integer} 						{ System.out.println ((new Number(yytext(), Tag.TAG_INT)).toString()); }
{whitespace}|{comment}   		{ /* Ignore */ }
