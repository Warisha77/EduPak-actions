#!/bin/bash

# Validate Argument Count
if [ "$#" -lt 2 ]; then
    echo "Usage Error: Missing arguments."
    echo "Correct Syntax: $0 [name] [city]"
    exit 1
fi

echo "Welcome to EduPak.pk, $1 from $2!"