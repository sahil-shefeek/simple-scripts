#!/bin/bash
if [ $# -lt 3 ]; then
    echo "Too few arguments!"
else
    if [ $1 -gt $2 ]; then
        MAX=$1
        MIN=$2
    else
        MAX=$2
        MIN=$1
    fi
    if [ $3 -gt $MAX ]; then
        MAX=$3
    fi
    if [ $3 -lt $MIN ]; then
        MIN=$3
    fi
    echo "$MAX is maximum and $MIN is the minimum"
fi
