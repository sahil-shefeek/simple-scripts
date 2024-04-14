#!/bin/bash
while [ 1 ]; do
cat << EOF
--------------------
        Menu
--------------------
1. Add
2. Subtract
3. Multiply
4. Divide
5. Modulo
6. Exit

Select an operation...
EOF
read OP
case $OP in
    1)
    read -p "Enter first number: " NUM1
    read -p "Enter second number: " NUM2
    echo "The result is:" $((NUM1 + NUM2))
    ;;
    2)
    read -p "Enter first number " NUM1
    read -p "Enter second number: " NUM2
    echo "The result is:" $((NUM1 - NUM2))
    ;;
    3)
    read -p "Enter first number " NUM1
    read -p "Enter second number: " NUM2
    echo "The result is:" $((NUM1 * NUM2))
    ;;
    4)
    read -p "Enter first number " NUM1
    read -p "Enter second number: " NUM2
    RES=$(echo "scale=2; $NUM1 / $NUM2" | bc)
    echo "The result is: $RES"
    ;;
    5)
    read -p "Enter first number " NUM1
    read -p "Enter second number: " NUM2
    echo "The result is:" $((NUM1 % NUM2))
    ;;
    6)
    echo "Exiting..."
    exit 0
    ;;
    *)
    echo "Please enter a valid operation."
    ;;
esac
done
