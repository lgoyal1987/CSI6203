#!/bin/bash
echo -e "Auth Log: "
cat /var/log/auth.log | awk '{
    if ($NF == "root")
    {
        print "\n" $1 " "$2" - " $3 ": \n" $5
        printf "\t"
            for (i=6; i<NF;  i++)
            printf $i " ";
            if (NF >=6)
                print $NF;
    }
}'