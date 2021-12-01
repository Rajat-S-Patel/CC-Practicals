%{
#include <string.h>
#include <stdio.h>
#include "Practical 5.tab.h"
int lookup(char str[]);
int count=0;
char name[20][8];
float value[20]={0};


%}
%%
[0-9]+  {yylval.ival=atoi(yytext); return NUMBER;}
[0-9]*"."[0-9]+ {yylval.fval=atof(yytext); return FNUMBER;}
[-+%(){};=/*]   {return yytext[0];}
([_$a-zA-Z][0-9]*)+ {yylval.ival=lookup(yytext);return ID;}
%%

int lookup(char str[]){
    int i;
    for( i=0;i<count;i++){
        if(strcmp(name[i],str)==0)
            return i;
    }
    count++;
    strcpy(name[i],str);
    return i;
}
int yywrap() {
 return 1;
}
