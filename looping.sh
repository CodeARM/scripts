#!/bin/bash
# project idea for loops - take a file and create a list of users in a csv so i 
# can upload to some future place

file="./userdata.csv"

while IFS=',' read -r f1 f2 f3 f4 f5 f6 rest; do
  echo "$f1 | $f4 | $f5 | $f6"
done < "$file"