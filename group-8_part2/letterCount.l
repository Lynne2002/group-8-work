/*** Definition Section has one variable
which can be accessed inside yylex()
and main() ***/
%{
int count[8] = {0};
%}
 
/*** Rule Section has the following rules: first rule for ignoring whitespaces, 
the next 7 for 7 letter words and the last one for ignoring other characters ***/
%%
[ \t\n]+     ;                                               
[a-zA-Z]{1}  {
                count[1]++;
                printf("1-Letter Word: %s\n", yytext);
             }
[a-zA-Z]{2}  {
                count[2]++;
                printf("2-Letter Word: %s\n", yytext);
             }
[a-zA-Z]{3}  {
                count[3]++;
                printf("3-Letter Word: %s\n", yytext);
             }
[a-zA-Z]{4}  {
                count[4]++;
                printf("4-Letter Word: %s\n", yytext);
             }
[a-zA-Z]{5}  {
                count[5]++;
                printf("5-Letter Word: %s\n", yytext);
             }
[a-zA-Z]{6}  {
                count[6]++;
                printf("6-Letter Word: %s\n", yytext);
             }
[a-zA-Z]{7}  {
                count[7]++;
                printf("6-Letter Word: %s\n", yytext);
             }
.           ; 
%%
 
/*** Code Section prints the number of
 letters present in the words in the sentence***/
int yywrap(){}
int main(){
 
// Explanation:
// yywrap() - wraps the above rule section
/* yyin - takes the file pointer
          which contains the input*/
/* yylex() - this is the main flex function
          which runs the Rule Section*/
// yytext is the text in the buffer
 
// Uncomment the lines below
// to take input from file
// FILE *fp;
// char filename[50];
// printf("Enter the filename: \n");
// scanf("%s",filename);
// fp = fopen(filename,"r");
// yyin = fp;
 
yylex();

//highest letter count
  int highest = 0;
  int i;
    for (i = 1; i <= 7; i++) {
        if (count[i] > highest) {
            highest = count[i];
        }
    }

    // Print the highest letter count
    printf("Highest Letter Count: %d\n", highest);

    return 0;
}
