# group8-work

# part 1

The resultant lexer from the word_by_word.l file takes an English sentence and outputs the individual words, together with the word count as shown below:

![out](https://github.com/Lynne2002/group-8/assets/69455961/19c5299a-5c9e-4f9f-af4b-ceed897b0e8b)

![output](https://github.com/Lynne2002/group-8/assets/69455961/ae29870d-a023-4a89-92f7-3c1eb305bcc1)

# part 2

The resultant lexer from the letterCount.l file takes an English sentence and counts the number of characters in each word, up to 7 words. It then returns each word with the corresponding number of letters.



![picture](https://github.com/Lynne2002/group8-work/assets/69455961/593cac2c-4324-4ed4-8188-246d74cbebc4)



The explanation for each section of the file is found in the individual lexer files. Here is a snippet:

            %%

            [ \t\n]+    ;                 //ignore whitespace characters

            [a-zA-Z]+   {

                   CountWords++;   //increment CountWords 
               
                   printf("Word %d: %s\n", CountWords, yytext);  //Print the word and its corresponding number
               
             }
             
            .           ;                  //ignore any other characters 

            %%
