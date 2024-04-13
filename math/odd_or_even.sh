#!/bin/bash
if [ $# -lt 1 ]; then
    echo "Too few arguments!"
else
    if (( $1 % 2 == 0 )); then
        echo "$1 is even."
    else
        echo "$1 is odd."
    fi
fi
