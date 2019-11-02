#!/bin/bash
read -p "Please type the URL to download: " URL
read -p "Please type the location to save the file: " location
wget -p $URL $location
sed -n 's/.*<title>\(.*\)<\/title>.*/\1/ip;T;q' $URL/index.html > webtitles.txt
echo -e "Download completed with the title:" 
cat webtitles.txt