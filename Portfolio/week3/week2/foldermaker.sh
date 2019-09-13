#!/bin/bash
#Author: Lalit Goyal
#read is used to read the value of variable from user input
read -p "type the foldername to create" foldername
#mkdir is used to create a directory
mkdir "$foldername"
exit 0