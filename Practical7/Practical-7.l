%{
#include "y.tab.h"
#include <stdio.h>
#include <stdlib.h>
%}

%%

"if" {return IF;}
"else" {return ELSE;}
"switch" {return SWITCH;}
"case" {return CASE;}
"default" {return DEFAULT;}
"for" {return FOR;}
"while" {return WHILE;}
[0-9]+ {return NUM;}
[A-Za-z][A-Za-z0-9]* {return ID;}
"<=" {return LE;}
">=" {return GE;}
"==" {return EQ;}
"!=" {return NE;}
"||" {return OR;}
"&&" {return AND;}
\n
. {return yytext[0];}

%%

yywrap(){
	return 1;
}
