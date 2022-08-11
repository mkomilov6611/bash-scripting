#!/bin/bash

function log() {
    local LOG_LEVEL=$1

    # get all the args after LOG_LEVEL
    shift
    MSG=$@

    TIMESTAMP=$(date +"%Y-%m-%d %T")

    if [ $LOG_LEVEL="ERROR" ] || $VERBOSE
    then
        echo "$TIMESTAMP $HOST $PROGRAM_NAME [$PID]: $LOG_LEVEL $MSG"
    fi
}

log 'ERROR' 'Build error'
log 'EMERG' 'Build fire🔥'