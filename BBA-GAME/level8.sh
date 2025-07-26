#!/bin/bash

#Create a script that searches for a specific word or phrase across all .log files in a directory and 
#outputs the names of the files that contain the word or phrase.

Directory="Arena"
SEARCH_TERM="why"

if [ ! -d $Directory ];then 
 echo "Directory not found"
 exit 1
fi

 grep -l "$SEARCH_TERM" "$Directory"/*.log 
