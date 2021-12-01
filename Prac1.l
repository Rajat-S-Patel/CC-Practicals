%{
	#include<stdio.h>
	int a = 10;
%}
%%
[0-9]	{printf("this is a digit\n");}
[a-z|A-Z][0-9|a-z|A-Z]*	{printf("this is an identifier = %s \n",yytext);}
[+|-|%|*|=|//]	{printf("this is an operator, value = %s \n",yytext);}
[>|<|=] {printf("this is a relational operator, value = %s \n",yytext);}
[!|&|>>|<<|~|^] {printf("this is a bitwise operator, value = %s \n",yytext);}
[,|;|(|)|{|}]	{printf("this is a synchronizing token, value = %s \n",yytext);}
\"	{printf("quotes\n");}
[ ]	{printf("this is space\n");}
%%
int yywrap(){}
int main(){ 
	yylex();
	printf("test program\n");
	return 0;
}
