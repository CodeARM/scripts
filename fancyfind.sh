#!/bin/bash

# since grep looks in files
# and find finds filenames
# I want to find this string inside a file or in a filename

# to make this reusable, I want to have a way to do both grep and find searches
# 

{
    find . -type f -name "*test*.sh" 
    grep -rl --include="*.sh" "test" .
} 

