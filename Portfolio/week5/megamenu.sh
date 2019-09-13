#!/bin/bash
#Author: Lalit Goyal
echo "1. Create Folder"
echo "2. List Files in a folder"
echo "3. Copy a Folder"
echo "4. Save a Password"
echo "5. Read a Password"
echo "6. Print Newest File"
echo "7. Use Calculator"
echo "8. Check Arguments"
echo "9. Create Megafolder"
echo "10.Use Internet Downloader"
echo "11.Use loop"
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
elif [[ $num == 7 ]]; then
bash ~/CSI6203/Portfolio/week4/simplecalculator.sh
elif [[ $num == 8 ]]; then
bash ~/CSI6203/Portfolio/week5/filenames.sh
elif [[ $num == 9 ]]; then
bash ~/CSI6203/Portfolio/week5/megafoldermaker.sh
elif [[ $num == 10 ]]; then
bash ~/CSI6203/Portfolio/week5/internetdownloader.sh
elif [[ $num == 11 ]]; then
bash ~/CSI6203/Portfolio/week5/loop.sh
fi
exit 0