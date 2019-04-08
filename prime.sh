#!/bin/bash

if [ $1 -lt 2 ]; then              #if statement to adjust lower-limit
    ll=2
else
    ll=$1
fi

if [ $2 -lt 2 ]; then               #if statement to adjust upper-limit
    ul=1
else
    ul=$2
fi

if [ $ul -lt $ll ]; then            #if statement to check for invalid input
    echo "Invalid Input!!"
    exit
fi

echo "Prime numbers between $1 and $2 are: "
for n in `seq $ll $ul`; do
    i=2
    flag=0
    while [ $i -le `expr $n / 2` ]; do
        if [ `expr $n % $i` = 0 ]; then
            flag=1
            break
        fi
        i=`expr $i + 1`
    done
    if [ $flag = 0 ]; then  
        echo $n
    fi
done

# usage:
# pass lowerlimit and upperlimit as arguments respectively
# eg:
#       bash prime.sh 1 30