#!/bin/bash

if [ $# -ne 2 ]; then
	echo "Invalid no of arguments (2 nos expected)"
	exit
fi

if [ ! -f $1 ]; then
	echo "Given file $1 not found"
	exit
fi

if [ `grep -c $2 $1` -lt 1 ]; then
	echo $2 >> $1
	echo "username $2 added to file $1"
else
	echo "username $2 already present $1"
fi
 
