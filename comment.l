%{
#include<stdio.h>
int v=0;
%}
%%
^"//" printf("This is a single line comment\n");
^"/*"[^*]*|[*]*"*/" printf("This is a Multi line comment\n");
\n
%%
int yywrap()
{
	return 0;
}
int main()
{
	yylex();
}