#! /bin/bash

function sayHello() {
    # LOCAL var, if you exclude it will become GLOBAL after the function execution :)
    local GREETING="HELLO" 
    echo $GREETING

    showCurrentTime
}

function showCurrentTime() {
    echo "Now $(date +%r)"
}

sayHello


# another example
function backUpFile() {
    if [ -f $1 ]
    then
        local BACK="/tmp/$(basename ${1}).$(date +%F).$$"
        
        echo "Backing up $1 to  $BACK"
        cp $1 $BACK
    else
        echo "File does not exist"
        return 1
    fi
}
backUpFile /etc/hosts && echo "Backup succeeded"