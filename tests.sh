#! /bin/bash

MY_SHELL=bash

if [ "$MY_SHELL" = "bash" ]
then
    echo "You seem to like bash, huh"
elif [ "$MY_SHELL" = "zsh" ]
then
    echo "You seem to like zsh, huh"
else
    echo "Whats that you using there"
fi