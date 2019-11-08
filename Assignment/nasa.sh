#!/bin/bash
printf "\nConnecting to nasa.gov ...\n"
#The following command sets the directory path to save the pictures and description.
PICTURES_DIR=~/Pictures
DESCRIPTION_DIR=~/Assignment
function get_webpage {
    echo "The page is downloaded to find the image"
    wget http://apod.nasa.gov/apod/ --quiet -O /tmp/apod.html
    grep -m 1 jpg /tmp/apod.html | sed -e 's/<//' -e 's/>//' -e 's/.*=//' -e 's/"//g' -e 's/^/http:\/\/apod.nasa.gov\/apod\//' > /tmp/pic_url
} 
current=$(date +'%Y%m%d')
if [ ! -e ~/Pictures/${current}_apod.jpg ]; then
    echo "We don't have the picture saved, save it"
    get_webpage
    # Got the link to the image
    PICURL=`/bin/cat /tmp/pic_url`
    echo  "Picture URL is: ${PICURL}"
    echo  "Downloading image"
    wget --quiet $PICURL -O $PICTURES_DIR/${current}_apod.jpg
else
    get_webpage
    # Got the link to the image
    PICURL=`/bin/cat /tmp/pic_url`
    echo  "Picture URL is: ${PICURL}"
    # Get the filesize
    SITEFILESIZE=$(wget --spider $PICURL 2>&1 | grep Length | awk '{print $2}')
    FILEFILESIZE=$(stat -c %s $PICTURES_DIR/${TODAY}_apod.jpg)
    # If the picture has been updated
    if [ $SITEFILESIZE != $FILEFILESIZE ]; then
        echo "The picture has been updated, getting updated copy"
        rm $PICTURES_DIR/${TODAY}_apod.jpg
        # Got the link to the image
        PICURL=`/bin/cat /tmp/pic_url`
        echo  "Downloading image"
        wget --quiet $PICURL -O $PICTURES_DIR/${TODAY}_apod.jpg
    else
        echo "The picture is downloaded already."
    fi
fi
# The following script prints title from the website.
 description=$(curl -s https://apod.nasa.gov/apod/ | 
 sed -n '/Explanation:/,/<center>/{ /html>/d; s/<[^>]*>/ /g; p}' |
 sed -e 's/<[^>]*.//g' | sed -e 's/^.*>//g' )
 printf "\n$description\n"
# The following script prints the credit from the website
 webcredits=$(curl -s https://apod.nasa.gov/apod/ |
 sed -n '/redit/,/Explanation/{ /html>/d; s/<[^>]*>/ /g; p}' |
 sed -e 's/<[^>]*.//g; s/^.*>//g' |
 sed -e 's/<a.*">//g' |
 sed -e 's/<.*>//g' | 
 sed -e 's/Explanation//g' | 
 sed -e 's/ Image Credit &//gi'| 
 sed -e 's/Copyright//gi;s/Image Credit://gi')
 printf "Image Credit: $webcredits"
 printf "\nDownload Finished\n"