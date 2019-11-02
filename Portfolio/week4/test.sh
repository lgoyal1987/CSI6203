#!/bin/bash
read -p "Please type a number less than 10" number
until(( $number <= 10 )); do
echo "That number is not less than 10! Please try again"

done
(( number += 5 ))
if (( number < 10 )); then
echo "After adding 5, the number is still less than 10"
done
exit 0