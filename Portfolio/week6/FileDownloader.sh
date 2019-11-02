#!/bin/bash
#Script for downloading a webpage to a specific location
file_downloader(){
    read -p "Please Type the URL of the file: " URL
    read -p "Please type the location to download the file: " location
    wget -p $URL $location
}
file_downloader
echo -e "The file is downloaded."