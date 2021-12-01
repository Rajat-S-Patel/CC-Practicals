%{

#include <stdio.h>
#include <stdlib.h>
void yyerror();
void yywrap();
extern float value[20];
int flag=0;

%}

%union
{
    int ival;
    float fval;
}

%token <ival> NUMBER
%token <ival> ID
%token <fval> FNUMBER
%type <fval> E

%right '='
%left '+' '-'
%left '*' '/' '%'
%left '(' ')'

%%
	ArithmeticExpression:E';'{
		printf("result = %f",$1);
		return 0;
	};
	E:E'+'E {$$=$1+$3;}
	|E'-'E {$$=$1-$3;}
	|E'*'E	{$$=$1*$3;}
	|E'/'E {$$=$1/$3;}
	|E'%'E {$$=(int)$1 % (int)$3;}
	|'('E')' {$$=$2;}
	|NUMBER	{$$=$1;}
	|FNUMBER {$$=$1;}
	;
	
%%
int main(){
    printf("\nEnter any Arithmetic Expression: ");
    yyparse();
    if(flag==0)
    {
        printf("\nEntered Arithmetic Expression is Valid");
    }
}
void yyerror()
{
    printf("\nEntered Arithmetic Expression is Invalid");
    flag=1;
}
