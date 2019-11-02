#!/bin/bash
grep -r sed
echo -e "All sed statements are displayed."
grep -r '^m'
echo -e "All lines starting with letter m are displayed."
grep -r '[0-9][0-9][0-9]'
echo -e "All lines containing three digit numbers are displayed."
grep -r '^[a,e,i,o,u]'
echo -e "All lines that start with vowel are displayed."
grep -r '.*(.*)'
echo -e "All lines that contain loops are displayed."
grep -r 'echo "[.*][.*][.*}.*"'
echo -e "All echo statements with at least three words are displayed."