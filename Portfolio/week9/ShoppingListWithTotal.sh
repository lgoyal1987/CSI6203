#!/bin/bash
awk 'BEGIN { FS=","; currency = "$";
    print ("Item         | Quantity | Price      | Amount")
    } 
    {     
        printf ("%-12s | %2d       | %-10s | %-10s\n" ,$1,$2,"$"$3, $2*$3)
    }' ./shopping.csv
awk -F',' 'BEGIN {sum_quantity=0};
{sum_quantity=sum_quantity+$2}
{sum_price=sum_price+$3}
{Amount=($2*$3)}
{total_sum=total_sum+($2*$3)}
END {
    printf "%-12s | %-8s | %-8s   | %-10s\n",
    "TOTAL", sum_quantity, "$"(sum_price), "$"(total_sum)
       NR
    }' shopping.csv
    echo ""