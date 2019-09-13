#!/bin/bash
#Author: Lalit Goyal
echo "Enter two numbers"
#Reading two inputs
read A
read B
#choosing what calculations need to be done
echo "Enter Choice"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
read ch
#to do the calculations
case $ch in
1) ans=$(( A + B ))
echo -e "\033[34m $ans\e[0m"
;;
2) ans=$(( A - B ))
echo -e "\033[32m $ans\e[0m"
;;
3) ans=$(( A * B ))
echo -e "\033[31m $ans\e[0m"
;;
4) ans=$(( A / B ))
echo -e "\033[35m $ans\e[0m"
;;
esac
echo "Result : $ans"
exit 0