#!/bin/bash

# Create a script that prints linecount for file if it exists

filename=$1

# Check if filename is provided 
if [ -z $filename ];then 
 echo "No filename provided"
 exit 1
fi

# Check if file exists
if [ ! -f $filename ]; then
  echo "File doesnt exist"
 exit 1
fi

# Print line count fo file
linecount=$( wc -l < $filename )
echo "the line count for file $filename is: $linecount"
