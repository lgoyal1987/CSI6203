#!/bin/bash
#This function prints a given error.
printError(){
    echo -e "\033[31mEROOR:\033[0m $1"
}
getNumber(){
    read -p "$1: "
    while (( $read < $2 || $read > $3 )); do
    printError "the number must be between $2 and $3"
    read -p "$1: "
done
}
while true;do
read -p "Please provide a number between 1 and 100 :" read
if (( $read == 42 )); then
echo -e "You have guessed the right number"
exit 0
elif (( $read < 42 )); then
echo "Number is too low"
else
echo "Number is too high"
fi
done