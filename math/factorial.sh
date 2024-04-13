#!/bin/bash

factorial(){
    if [ $1 -eq 0 ]; then
        echo 1
    else
        local RES=$(($1 * $(factorial $(($1 - 1)))))
        echo $RES
    fi
}

read -p "Enter any number: " NUM
echo "Factorial of $NUM is $(factorial $NUM)"
