#!/bin/bash
read -p "Enter the number of terms: " NUM
VAR_A=0;
VAR_B=1;
if [ $NUM -gt 0 ]; then
    echo "Fibonacci series upto $NUM terms is:"
    echo -n $VAR_A
    if [ $NUM -gt 1 ]; then
        echo -n ", $VAR_B"
            if [ $NUM -gt 2 ]; then
                for(( i=2; i<$NUM; i++ )); do
                    ((VAR_C=VAR_A+VAR_B))
                    echo -n ", $VAR_C"
                    ((VAR_A=VAR_B))
                    ((VAR_B=VAR_C))
                done
            fi
    fi
fi
echo
