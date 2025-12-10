#!/bin/bash

# since grep looks in files
# and find finds filenames
# I want to find this string inside a file or in a filename

# to make this reusable, I want to have a way to do both grep and / or find searches 
# where I comment out a line I'm not using or have both

# "test" can be replaced with the string I am looking for 
maxargs=1
if [ $# -ne $maxargs ]
then 
    echo "You need to say the string you want to look for \"$0 string-name\""
    exit
fi
{
    find . -type f -name "*$1*.sh" 
    grep -rl --include="*.sh" "$1" . 
} 
