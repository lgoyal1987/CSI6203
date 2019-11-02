#!/bin/bash
echo "Your shopping list is as follows: "
awk 'BEGIN {
    FS=","
}
/^[aeiou]/ {
    print "The lines which start with a vowel: " $1
}' ../week9/shopping.csv
awk 'BEGIN {
    FS=","
}
/^o/{
    print "The lines which start with letter o are: "$1
}' ../week9/shopping.csv
echo -e "The lines having more than one word"
awk -v count=1 'NF>count' ../week9/shopping.csv
awk 'BEGIN {
    FS=","
}
!/\./{
    print "The total number price: " $1
}' ../week9/shopping.csv