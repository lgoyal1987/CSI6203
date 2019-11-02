#!/bin/bash
awk 'BEGIN { FS=","; currency = "$";
    print ("Item         | Quantity | Price")
    } 
    {     
        printf ("%-12s | %2d       | %-10s\n" ,$1,$2,"$"$3)
    }' ./shopping.csv