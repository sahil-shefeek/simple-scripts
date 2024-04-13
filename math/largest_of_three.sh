#!/bin/bash
if [ $# -lt 3 ]; then
    echo "Too few arguments!"
else
    if [ $1 -gt $2 ]; then
        if [ $1 -gt $3 ]; then
            echo "$1 is the largest."
        else
            echo "$3 is the largest."
        fi
    else
    if [ $2 -gt $3 ]; then
        echo "$2 is the largest."
    else
         echo "$3 is the largest."
    fi
    fi
fi
