%{
#include <stdio.h>
%}

%%
[a-zA-Z]+[0-9]*      { printf("Word: %s\n", yytext); }
[0-9]+[a-zA-Z]*      { printf("Number: %s\n", yytext); }
[a-zA-Z0-9]+         { printf("Alphanumeric: %s\n", yytext); }
.                    {        }
%%
int yywrap(){
return 0;   
}
int main() {
    yylex();
    return 0;
}