import sys
import os

# THIS DOES NOT WORK BUT I WANT IT TRACKED 

# since grep looks in files
# and find finds filenames
# I want to have a way to do both grep for strings in files and find strings in filenames
# I want to also want grep or find separately
# I want to use parameters to make printing things easy and having one change for the searches

# What are the steps

# indicate where to grep or find (is it as simple as "."???)
# loop through all the files in this directory (how do i do this? make a fake array ??)
# find filenames with 'test' in them (use "in")
# print out $filename has 'test' in the filename
# parameterize 'test'
# in the final, print out "this file has in the body of"
# echo "this file has in the name" or "... body"
# could be ideal to say for each file if it has either or both

string_to_find="test"
files=os.listdir('.')


for filename in files:
  if string_to_find in filename:
    print(f"{filename} contains '{string_to_find}'")
  else:
    print(f"No filenames contain '{string_to_find}'")
