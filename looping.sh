#!/bin/bash
# project idea for loops - take a file and create a list of users in a csv so i 
# can upload to some future place

file="./userdata.csv"
for item in $(cat "$file"); do
  echo "Here's a line in the file: $item"
done 