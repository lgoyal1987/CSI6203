#!/bin/bash
#Author: Lalit Goyal
ping -c1 8.8.8.8
if [ "$?" -eq 0 ]; then
echo "Internet is connected"
else
echo "Error!!!"
exit 1
fi
#Name of website is taken as input
read -p "Please type the URL of the website for downloading or exit" web
while [ "$web" != "exit" ]; do
wget "$web"
read -p "Please type the URL of the website to download" web
done
echo "Thank You"
exit 0