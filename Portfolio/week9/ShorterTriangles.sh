#!/bin/bash
#using awk to shortening the text
bash ../week6/Triangles.sh | awk '{ sub(/The area for a triangle with base/, "Base: ") }1' | awk '{ sub(/and height/, "Height: ") }1' | awk '{ sub(/is: /, "Area: ")}1'
bash ../week6/Triangles.sh | awk -F ':' '{sum += $2} END {print "Total Area is: " "" sum "\033[0m"}'