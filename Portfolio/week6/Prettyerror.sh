#!/bin/bash
VAR1=$1
#The error message is shown in red color by the use of this function
printError(){
    echo -e "\033[31mERROR: \033[0m " "\033[31m$VAR1"
}
printError