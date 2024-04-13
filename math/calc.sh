#!/bin/bash
cat << EOF
--------------------
        Menu
--------------------
1. Add
2. Subtract
3. Multiply
4. Divide
5. Modulo

Select an operation...
EOF
read OP
read -p "Enter first number " NUM1
read -p "Enter second number: " NUM2
case $OP in
    1)
    SUM=$((NUM1 + NUM2))
    ;;
    2)
    SUM=$((NUM1 - NUM2))
    ;;
    3)
    SUM=$((NUM1 * NUM2))
    ;;
    4)
    SUM=$(echo "scale=2; $NUM1 / $NUM2" | bc)
    ;;
    5)
    SUM=$((NUM1 % NUM2))
    ;;
    *)
    echo "Please enter a valid operation."
    return 1
    ;;
esac
echo "The result is: $SUM"
