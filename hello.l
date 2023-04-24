%{
#include <stdio.h>
%}

%%
[^\n]+ { printf("Hello %s!\n", yytext); }
\n     { /* Ignore newline */ }
%%

int yywrap() {
 return 1;
}
int main(int argc, char *argv[]) {
printf("Enter your name: ");
yylex();
return 0;
}