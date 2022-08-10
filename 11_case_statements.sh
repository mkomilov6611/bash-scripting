#! /bin/bash

case "$1" in
    start | START)
        echo "Starting .."
        /usr/bin/sshd
        ;;
    stop | STOP)
        echo "Stopping .."
        kill $(cat /var/run/sshd.pid)
        ;;
    *)
        echo "Usage $0 start | stop"
        exit 1
        ;;
esac


# MORE EXAMPLE
read -p "Enter y or n: " ANSWER

case "$ANSWER" in
    [yY] | [yY][eE][sS])
        echo "You answered yes."
        ;;
    [nN] | [nN][oO])
        echo "You said no"
        ;;
    *)
        echo "Invalid answer!"
        ;;
esac