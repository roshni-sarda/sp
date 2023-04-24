%{
#include <stdio.h>
%}

%%
[0-9]+    { printf("NUMBER: %s\n", yytext); }
[a-zA-Z]+ { printf("IDENTIFIER: %s\n", yytext); }
[ \t\n]   { /* Ignore whitespace */ }
.         { printf("INVALID: %s\n", yytext); }
%%

int yywrap() {
 return 1;
}
int main(int argc, char *argv[]) { 
yylex();
return 0;
}