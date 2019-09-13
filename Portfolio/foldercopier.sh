#!/bin/bash
#Author: Lalit Goyal
#read is used to read the value of variable from user input
read -p "Type the foldername to copy:" foldername
if [ -d "$foldername" ]
then
read -p "Type the name of the destination folder:" folder
#cp is used to copy the file or folder
cp -r "$foldername" "$folder"
else
#echo is used to display the output
echo "The folder doesn't exist"
fi
exit 0