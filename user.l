%{
#include <stdio.h>
%}

%%

^[a-zA-Z]+$    { printf("%s is a word.\n", yytext); }
^[0-9]+$       { printf("%s is a number.\n", yytext); }
^[a-zA-Z0-9]+$ { printf("%s is a combination of word and number.\n", yytext);}

%%
int yywrap(){
 return 1;
}

int main(int argc, char *argv[]) { 
yylex();
return 0;
}

