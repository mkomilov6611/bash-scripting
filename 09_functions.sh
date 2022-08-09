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