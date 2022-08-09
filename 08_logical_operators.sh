#! /bin/bash

# && (AND), || (OR) operators can be used to pipe commands or used as a conditional operator

# second command only executes if the first command is successfull (return code is 0)
mkdir /tmp/bak && cp test.txt /tmp/bak

# second command only executes if the first command is NOT successfull (return code is NOT 0)
cp test.txt /tmp/bak/ || cp test.txt /tmp

# the use case from the last script
ping -c 1 "google.com" || echo "The host is unreachable"

# ; semicolon can be used to combine multiple commands in the same line, without checking return codes
mkdir /tmp/a; cp test.txt /tmp/a
