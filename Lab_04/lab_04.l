%{
#include <stdio.h>
%}


%%


\/\/.* { printf("COMMENT "); }

"f" { printf("floatdcl "); }
"i" { printf("intdcl "); }
"p" { printf("print "); }

"=" { printf(" assign ");}
"+" { printf(" plus ");}

[0-9]+ { printf("inum ");}
[0-9]*"."[0-9]+ { printf("fnum "); }

[a-zA-Z]+ { printf("id ");}

[ \t]+                  /* ignore whitespace */


%%

int main() {
    yylex();
    return 0;
}
