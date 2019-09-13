#!/bin/bash
#Author: Lalit Goyal
#read -p is used to read value for the variable
read -p "Please type a foldername to open:" foldername
#ls is used to list the directories and files
ls "/home/student/CSI6203/Portfolio/$foldername"
exit 0