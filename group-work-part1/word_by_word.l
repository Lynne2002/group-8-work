%{

#include <stdio.h>

int CountWords = 0; //keeps track of the number of words entered

%}

%%

[ \t\n]+ ; //ignore whitespace characters

[a-zA-Z]+ {

           CountWords++;   //increment CountWords 
           
           printf("Word %d: %s\n", CountWords, yytext);  //Print the word and its corresponding number
           
         }
. ; //ignore any other characters

%%

int main() {

yylex();                  //start the lexical analysis

return 0;
}
