#!/bin/bash
if [ $# -lt 1 ]; then
    echo "Too few arguments!"
else
    if [ $1 -eq 1 ]; then
        SUM=1
    else
        SUM=$(echo "scale=2; $1 * ($1 + 1) / 2" | bc)
    fi
    echo "Sum of $1 natural numbers is: $SUM"
fi
