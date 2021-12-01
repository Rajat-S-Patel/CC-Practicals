%{

#include <stdio.h>
#include <stdlib.h>

%}

%token IF ELSE SWITCH CASE DEFAULT NUM ID FOR WHILE LE GE EQ NE OR AND

%right '='
%left OR AND
%left '>' '<' LE GE EQ NE
%left '+' '-'
%left '*' '/'
%left '!'

%%

S : ST { printf("Input is valid!! \n"); exit(0);}
  ;

ST : IF '(' E ')' BLOCK
   | IF '(' E ')' BLOCK ELSE BLOCK
   | SWITCH '(' E ')' '{' CBLOCK '}'
   | FOR '(' E ';' E ';' E ')' BLOCK
   | WHILE '(' E ')' BLOCK
   ;
   
CBLOCK : CASE ' ' NUM':' BLOCK
	   | DEFAULT ':' BLOCK
	   ;

BLOCK: E ';'
	 | '{' BODY '}'
	 ;
	 
BODY : E ';'
	 | ST
	 ;
	 
E	: E '+' E
	| E '-' E
	| E	'*' E
	| E '/' E
	| E '>' E
	| E '<' E
	| ID EQ E
	| E LE E
	| E GE E
	| E NE E
	| E OR E
	| E AND E
	| '!' E
	| E '=' E
	| E '+' '+'
	| E '-' '-'
	| '+''+' E
	| '-''-' E
	| ID
	| NUM
	;

%%

int main(){
	printf("Enter expression: \n");
	yyparse();

	return 0;
}

void yyerror(char *s){
	printf("%s\n",s);
}
	
	
