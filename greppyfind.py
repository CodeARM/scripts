import 

# since grep looks in files
# and find finds filenames
# I want to find this string inside a file or in a filename

# to make this reusable, I want to have a way to do both grep and find searches
# "test" can be replaced with the string you are looking for

// loop through all the files in this directory

for file in files

// find filenames with 'test' in them



// print out $filename has 'test' in the filename
// parameterize 'test'
{
    find . -type f -name "*test*.sh" 
    grep -rl --include="*.sh" "test" . 
} 

# | echo "this file has in the body of"
# | echo "this file has in the name"

