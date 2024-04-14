#!/bin/bash
while [ 1 ]; do
read -p "Enter first number " NUM1
read -p "Enter second number: " NUM2
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
    RES=$((NUM1 + NUM2))
    ;;
    2)
    RES=$((NUM1 - NUM2))
    ;;
    3)
    RES=$((NUM1 * NUM2))
    ;;
    4)
    RES=$(echo "scale=2; $NUM1 / $NUM2" | bc)
    ;;
    5)
    RES=$((NUM1 % NUM2))
    ;;
    6)
    echo "Exiting..."
    exit 0
    ;;
    *)
    echo "Please enter a valid operation."
    ;;
esac
echo "The result is: $RES"
done
