%{ 
#include<stdio.h> 
int lc=0, sc=0, tc=0, ch=0; /*Global variables*/
%} 
%% 
\n lc++; //line counter 
([ ])+ sc++; //space counter 
\t tc++; //tab counter 
. ch++;     //characters counter 
%% 
int yywrap (void ) 
 { 
    return 1; 
 }  
int main() 
{ 
     yyin = fopen("Code.txt", "r"); 
    // The function that starts the analysis 
    yylex(); 
    printf("\ncharacter recognition");  
    printf("\n\tWords: =%d", sc-1);  
    printf(" and Lines: =%d", lc+1);   
    
     
      
} 