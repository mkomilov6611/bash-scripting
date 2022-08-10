#! /bin/bash

for FILE in /var/www/*.html
do
    echo "Copying $FILE"
    cp $FILE /var/www-just-html
done

# MORE ON WILDCARDS

# *.txt (zero or more matches) -> any file that ends with txt

# ?.txt (exactly one character match) -> any file with one char and txt ending

# [abc]*.txt -> any file that starts either with a, b or c and ending txt

# [!0-9]?.txt -> any file that does NOT start with number and exactly one char long, and of course txt ending

# [[:digit:]] = [0-9], 
# [[:alpha:]] = [a-zA-Z], 
# [[:alnum:]] = [a-zA-Z0-9], 
# [[:space:]]  -> built-in ranges