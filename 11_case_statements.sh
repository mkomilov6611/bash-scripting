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
