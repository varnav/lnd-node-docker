#!/usr/bin/env bash

set -ex

# error function is used within a bash function in order to send the error
# message directly to the stderr output and exit.
error() {
    echo "$1" > /dev/stderr
    exit 0
}

# return is used within bash function in order to return the value.
return() {
    echo "$1"
}

exec lnd \
    --noseedbackup \
    --logdir="/data" \
    "$@"
