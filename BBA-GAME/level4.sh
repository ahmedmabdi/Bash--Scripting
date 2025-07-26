#!/bin/bash

# Create a script that copies all .txt files from the Arena directory to a new directory called Backup.
# Create a directory called Backup
mkdir -p Backup

# Copy all .txt files into Backup directory 
cp -r Arena/*.txt Backup/

#List contents of both Arena and Backup directory 
echo "Contents of Arena;"
ls Arena/
echo ""
echo "Contents of Backup;"
ls Backup/
