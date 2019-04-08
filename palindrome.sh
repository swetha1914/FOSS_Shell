#!/bin/bash

str=$1
rev=`echo $str | rev`
if [ $str = $rev ]; then
    echo "Palindrome"
else
    echo "Not Palindrome"
fi

# usage:
# pass the word to check as argument
# eg 1: bash palindrome.sh help
#   o/p: Not Palindrome
# eg 2: bash palindrome.sh malayalam
#   o/p: Palindrome