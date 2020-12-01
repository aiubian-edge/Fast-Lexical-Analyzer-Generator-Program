%{ 
#include<stdio.h> 
int lc=0, sc=0, tc=0, ch=0; /*Global variables*/
%} 
%% 
\n lc++; 
([ ])+ sc++; 

%% 
int yywrap (void ) 
 { 
    return 1; 
 }  
int main() 
{ 
     yyin = fopen("Code.txt", "r"); 
    yylex(); 
    printf("\ncharacter recognition");  
    printf("\n\tWords: =%d", sc-1);  
    printf(" and Lines: =%d", lc+1);  
} 