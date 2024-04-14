#!/bin/bash
if [ $# -lt 1 ]; then
    echo "Too few arguments!"
else
    SUM=$(echo "scale=2; $1 * ($1 + 1) / 2" | bc)
    echo "Sum of $1 natural numbers is: $SUM"
fi
