#!/bin/bash
#Author: Lalit Goyal
echo "1. Create Folder"
echo "2. List Files in a folder"
echo "3. Copy a Folder"
echo "4. Save a Password"
echo "5. Read a Password"
echo "6. Print Newest File"
read num
#To Display the output
echo
if [[ $num == 1 ]]; then
bash ~/CSI6203/Portfolio/week2/foldermaker.sh
elif [[ $num == 2 ]]; then
bash ~/CSI6203/Portfolio/week2/folderlister.sh
elif [[ $num == 3 ]]; then
bash ~/CSI6203/Portfolio/week3/foldercopier.sh
elif [[ $num == 4 ]]; then
bash ~/CSI6203/Portfolio/week2/savepassword.sh
elif [[ $num == 5 ]]; then
bash ~/CSI6203/Portfolio/week3/readpassword.sh
elif [[ $num == 6 ]]; then
bash ~/CSI6203/Portfolio/week3/latestfile.sh
fi
exit 0