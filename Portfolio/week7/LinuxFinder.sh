#!/bin/bash
read -p "Please type the file name: " fileName
sed -i '/Linux/i The next line contains the word Linux!' $fileName
echo "editing file..."
echo "done!"