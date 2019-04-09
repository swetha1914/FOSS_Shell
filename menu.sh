#!/bin/bash

echo -e "Enter required option\n\t1. Prime nos in given range.\n\t2. Sum of Even nos in given range."
read -p ": " opt

case $opt in
    1)
        read -p "Enter lower limit: " ll
        read -p "Enter upper limit: " ul
        bash prime.sh $ll $ul
    ;;

    2)
        read -p "Enter lower limit: " ll
        read -p "Enter upper limit: " ul
        bash sum_even.sh $ll $ul
    ;;

    *)
        echo -e "\nInvalid Input!!"
    ;;
esac