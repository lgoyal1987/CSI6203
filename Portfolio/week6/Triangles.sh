#!/bin/bash
#This script calculates area of triangle
areaTriangle(){
  echo " The area for a triangle with base: $base and height: $height is: " $(($base*$height/2))
}
#Using loops to repeat for base and height from 1 to 100
for (( base = 1; base <= 100; base++ )) do
for (( height = 1; height <= 100; height++ )) do
areaTriangle $base $height
done
done
exit 0