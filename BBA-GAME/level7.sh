#!/bin/bash

# Write a script that sorts all .txt files in a directory by their size, from smallest to largest. 
# And displays the sorted list.
Directory="Arena"


if [ ! -d $Directory ];then 
 echo "Directory not found"
else
echo "File sorted by size:"
find "$Directory" -type f -name "*.txt" -exec ls -lh {} + | sort -k 5,5 -h | awk '{ print $5, $9 }'
fi
