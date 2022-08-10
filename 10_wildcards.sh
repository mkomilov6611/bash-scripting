#! /bin/bash

for FILE in /var/www/*.html
do
    echo "Copying $FILE"
    cp $FILE /var/www-just-html
done

# MORE ON WILDCARDS

# *.txt (zero or more matches) -> any file that ends with txt

# ?.txt (exactly one character match) -> any file with one char and txt ending

