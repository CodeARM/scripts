import os

# THIS DOES NOT WORK BUT I WANT IT TRACKED 

# since grep looks in files
# and find finds filenames
# I want to find this string inside a file or in a filename

# I want to have a way to do both grep for things in files and find strings in filenames
# I want to also want grep or find

string_to_find="test"

# loop through all the files in this directory

for file in files:
  if filename contains $string_to_find
    print("$filename contains $string_to_find")
  else:
    print("No filenames contain $string_to_find")

# find filenames with 'test' in them



# print out $filename has 'test' in the filename
# parameterize 'test'
{
    find . -type f -name "*test*.sh" 
    grep -rl --include="*.sh" "test" . 
} 

# | echo "this file has in the body of"
# | echo "this file has in the name"

