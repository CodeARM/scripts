#!/bin/bash

# since grep looks in files and find finds filenames
# I want to find this string inside a file or in a filename
# "test" can be replaced with the string I am looking for 

maxargs=1

if [ $# -ne $maxargs ]
then 
    echo "You need to say the string you want to look for \"$0 string-name\"" # $0 is the name of the file in case I change the filename this will update
    exit
fi

{
    findings=$(find . -type f -name "*$1*.sh" -exec echo "{} contains $1 in the filename" \;)
    greppings=$(grep -rl --include="*.sh" "$1" . | sed "s/$/ contains $1 inside /")
    echo $findings
    echo $greppings
} 