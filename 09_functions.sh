#! /bin/bash

function sayHello() {
    echo "Hello"
    showCurrentTime
}

function showCurrentTime() {
    echo "Now $(date +%r)"
}

sayHello