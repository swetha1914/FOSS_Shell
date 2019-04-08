#!/bin/bash

if [ `grep -c $1 $2` -gt 0 ]; then
echo "Found"
else 
echo "Not Found"
fi

