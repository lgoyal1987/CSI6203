#!/bin/bash
echo -e " The title of the page:"
curl -s http://www.example.com | grep -o "<title>.*</title>" | sed 's/<title>//' | sed 's/<\/title>//'
echo -e "The content of the page:"
curl -s http://www.example.com | sed -n '/<p>/,/<\/p>/{ /html>/d; s/<[^>]*>//g; p}' | sed 's/<p>//' | sed 's/<\/p>//' 