#!/bin/bash

cpu_limit=40
mem_limit=5

while [ 1 ];
do 
  ps -eo pid,%mem,%cpu,cmd,ppid --sort=-%mem | head > ps.list
  for line in {2..9}
  do 

    mem=$(sed -n `echo $line`p ps.list | awk '{print $2}')
    cpu=$(sed -n `echo $line`p ps.list | awk '{print $3}')
    pid=$(sed -n `echo $line`p ps.list | awk '{print $1}')

    exceeds_limit=$(echo "$cpu > $cpu_limit" | bc -l)
    if [ "$exceeds_limit"  = "1" ]; then
	    echo -e "$(sed -n $(echo $line)p ps.list | awk '{print $4}') CPU limit exceeded, killing it\n"
      kill $pid
      continue
    fi

    exceeds_limit=$(echo "$mem > $mem_limit" | bc -l)
    if [  "$exceeds_limit" = "1" ]; then
	    echo -e "$(sed -n $(echo $line)p ps.list | awk '{print $4}') memory limit exceeded, killing it\n"
      kill $pid
    fi

  done

done
