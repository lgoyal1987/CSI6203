#!/bin/bash
#Author: Lalit Goyal
#echo is used to display the output
echo -e "Number of files are $#\n"
if [ "$#" -lt 3 ]; then
echo -e "ERROR!!!"
exit 1
elif [ "$#" -eq "3" ] && [ "$*"=-f ]; then
unset -v latest
for file in "$week3"; do
if [ "$1" -nt "$2" ] && [ "$1" -nt "$3" ]; then
echo -e "\n "$1" is the new file \n"
if [ "$2" -nt "$1" ] && [ "$2" -nt "$3" ]; then
echo -e "\n "$2" is the new file \n"
if [ "$3" -nt "$1" ] && [ "$3" -nt "$2" ]; then
echo -e "\n "$3" is the new file \n"
exit 1
fi
done
elif [ "$#" -gt "3" ]; then
echo -e "ERROR!!!!"
exit 1
fi
exit 0