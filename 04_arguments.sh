#! /bin/bash

USER=$1 # the first parameter is the user

# standard input
# read -p "Entering a user name: " USER

echo "Executing script: $0"
echo "Archiving user: $1"

# Lock the account
passwd -l $USER

# Create an archive of the home dir
tar cf /archives/${USER}.tag.gz /home/${USER}



