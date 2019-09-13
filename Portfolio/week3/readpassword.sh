#!/bin/bash
#Author: Lalit Goyal
#read is used to read the value of variable from user input
read -p "Name of file you want to open:" file
if [ -f "$file" ]; then
#cat is used to read a file
cat "$file"
else
#echo is used to display the output
echo "Sorry!!! "$file" doesn't exists"
fi
exit 0