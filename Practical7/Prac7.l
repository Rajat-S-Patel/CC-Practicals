%{
#include "prac7.tab.h"
%}


%%
"if"                    {return IF;}
"else"                  {return ELSE;}
"for" 	                {return FOR;}
[0-9]+                  {return NUM;}
[A-Za-z][A-Za-z0-9]*    {return ID;}
"<="    return LE;
">="    return GE;
"=="    return EQ;
"!="    return NE;
"||"    return OR;
"&&"    return AND;
.                       {return yytext[0];}
%%
