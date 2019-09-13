#!/bin/bash
#Author: Lalit Goyal
#IFS - Internal Field Seperator
IFS=$'\n'
for file in $(cat filenames.txt); do
if [ -f "$file" ]; then
echo "$file File exists"
elif [ -d "$file" ]; then
echo "$file is a directory"
elif [ "$file" ]; then
echo -e "I don't know what this is!"
fi
done
exit 0