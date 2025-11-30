#!/bin/bash

# make a log of the files in the current dir 
# needs a way to catch when this doesn't work

dateandtime=$(date '+%Y-%m-%d_%H-%M-%S')
filelist=$(ls -al)
printf "$filelist" > "list-of-files-$dateandtime.txt"
echo For $dateandtime, "I've added a list of files to your current directory"
total 72
