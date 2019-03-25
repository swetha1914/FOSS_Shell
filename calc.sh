#!/bin/bash
read -p "Enter the value of a: " a
read -p "Enter the value of b: " b

echo -e "Enter the required option\n\t1. Addition(+)\n\t2. Subtract(-)\n\t3. Multiply(*|x)\n\t4. Divide(/)"
read -p ": " op

case $op in 
	1|+)
		echo -n "$a + $b = "
                echo "scale=3; $a+$b" | bc
	;;

	2|-)
		echo -n "$a - $b = "
                echo "scale=3; $a-$b" | bc
	;;

	3|x|"*")
		echo -n "$a x $b = "
                echo "scale=3; $a*$b" | bc
	;;

	4|/)
		echo -n "$a / $b = "
		echo "scale=3; $a/$b" | bc
	;;
	
	*)
		echo "Invalid Input"
	;;
esac

