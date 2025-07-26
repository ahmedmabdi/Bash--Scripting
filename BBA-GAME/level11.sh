#!/bin/bash

#Create a script that checks the disk space usage of a specified directory and
# sends an alert if the usage exceeds a given threshold.

Directory=Arena
Threshold=1

USAGE=$(du -sm $Directory | awk '{print $1}')

if [ "$USAGE" -gt "$Threshold" ]; then 
    echo "Warning !!! Disk usage is at ${USAGE}MB!!"
else
    echo "Disk usage is at ${USAGE}MB. All is well"
fi
