#!/bin/bash

# Argument Check
if [ -z "$1" ]; then
    echo "Usage Error: Please supply an age value."
    echo "Example: $0 19"
    exit 1
fi

AGE=$1

if [ "$AGE" -ge 18 ]; then
    echo "You can enroll in DevOps course!"
else
    echo "You must be 18+ to enroll!"
fi