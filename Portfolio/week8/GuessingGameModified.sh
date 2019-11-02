#!/bin/bash
#This command is used to change the word Correct is changed to Right.
sed -i 's/correct/right/g' ../week6/GuessingGame.sh 
sed -rn 's/echo.*"(.*)"/\1/p' ../week6/*.sh > output.txt