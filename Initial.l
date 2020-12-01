%{
#include <math.h>
#undef yywrap
#define yywrap() 1 
%}
%s expect
%%
floats BEGIN(expect);
<expect>[0-9]+.[0-9]+      {
                printf( "found a float, = %f\n",
                        atof( yytext ) );
                }
<expect>\n      {
                  BEGIN(INITIAL);
                }

[0-9]+          {
                printf( "Contains only digits, \n",atoi( yytext) );
                }
"."         printf( "found a dot\n" );
[A-Z]+ {
	printf("Contains UpperCase letters", atof( yytext ));
} 
[a-z]+   {
 	printf("Contains LowerCase letters",atof( yytext ));
} 
[A-Z] [a-z]+ {
	printf("Exiting form ## start condition", atof( yytext ));
} 

%%
int main()
{
 yylex();
}