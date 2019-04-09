#!/bin/bash

ll=$1
ul=$2

if [ $ul -lt $ll ]; then            #if statement to check for invalid input
    echo "Invalid Input!!"
    exit
fi

sum=0

for n in `seq $ll $ul`; do
    if [ `expr $n % 2` = 0 ]; then
        sum=`expr $sum + $n`
    fi
done

echo "Sum of Even numbers between $1 and $2 is: $sum"

# usage:
# pass lowerlimit and upperlimit as arguments respectively
# eg:
#       bash sum_even.sh 1 30