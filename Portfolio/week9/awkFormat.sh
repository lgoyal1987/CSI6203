#!/bin/bash
echo -e "The items on your shopping list is as follows: "
#awk '{
#   print $1
# }' shopping.csv
#Correction of the script.
awk 'BEGIN {
    FS=","
    }
    {
        print $1
        }' shopping.csv