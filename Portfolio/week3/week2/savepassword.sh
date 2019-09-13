#!/bin/bash
#Author: Lalit Goyal
#read is used to read the value of variable from user input
read -p "Type a foldername:" foldername
#mkdir is used to create a new directory
mkdir $foldername
#read -s is used as the secret status of the text
read -s -p "Type the secret password" password
#echo is used to display the output
echo -e "Your secret password is $password" > secret.txt
#mv is used to move a file or folder to another folder
mv secret.txt $foldername
exit 0