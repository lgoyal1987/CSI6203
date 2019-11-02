#!/bin/bash
#The script uses sed command to changes base with Base and height with Height and area with Area.
bash ../week6/Triangles.sh | sed 's/The area for a triangle with base/Base/g' | sed 's/and height/Height/g' | sed 's/is/Area/g'