%{
 #include<stdio.h>
 #include<stdlib.h>
 void yyerror(char *str);
 int yywrap(void);
 int yylex();
%}
%token IF ELSE NUM ID FOR LE GE EQ NE OR AND
%right '='
%left OR AND
%left '>' '<' LE GE EQ NE
%left '+' '-'
%left '*' '/'
%right UMINUS 
%left '!'
%%
S    : ST { printf("Input Accepted\n"); exit(0);}
     ;
ST   : FOR '(' E ',' E ',' E ')' DEF
     | IF '(' E ')' DEF
     | IF '(' E ')' DEF ELSE DEF
     ; 
DEF  : '{' BODY '}'
     | E ';'
     |
     ;
BODY : E ';'
     | ST
     |
     ;
E    : ID EQ E
     | E '+' E
     | E '-' E
     | E '*' E
     | E '/' E
     | E '>' E
     | E '<' E
     | E LE E
     | E GE E
     | E NE E
     | E OR E
     | E AND E
     | E '=' E
     | E '+' '+'
     | E '-' '-'
     | ID
     | NUM
     ;
%%
int main(){
     printf("Enter the exp:");
    yyparse();
    return 0;
}
int yywrap(void) {
    return 0;
}
void yyerror(char *str){
  printf("Syntax Error:%s\n",str);
}
