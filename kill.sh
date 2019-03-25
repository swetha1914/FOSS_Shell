#!/bin/bash

cpu_limit=20
mem_limit=10

while [ 1 ];
do 
  ps -eo pid,%mem,%cpu,cmd,ppid --sort=-%mem | head > ps.list
  for line in {1..9}
  do 
	  mem=$(sed -n `echo $line`p ps.list | awk '{print $2}')
    cpu=$(sed -n `echo $line`p ps.list | awk '{print $3}')
    pid=$(sed -n `echo $line`p ps.list | awk '{print $1}')

    if [ $(echo "$mem > $mem_limit" |bc -l) ]; then
      echo -e "$(sed -n `echo $line`p ps.list | awk '{print $4}') memory limit exceeded, killing it"
      kill $pid
    fi

    if [ $(echo "$cpu > $cpu_limit" |bc -l) ]; then
      echo -e "$(sed -n `echo $line`p ps.list | awk '{print $4}') CPU limit exceeded, killing it"
      kill $pid
    fi
  done
done
