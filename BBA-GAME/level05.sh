#!/bin/bash

# Creates a directory names 'Battlefield'
mkdir -p Battlefield

# Inside Battlefield, create files named knight.txt, sorcerer.txt, and rogue.txt
touch Battlefield/knight.txt Battlefield/sorcerer.txt Battlefield/rogue.txt

# Check if knight.txt exists; if it does, move it to a new directory called Archive
# Create Archive directory
mkdir -p Archive
if [ -f Battlefield/knight.txt ];then 
 mv Battlefield/knight.txt Archive/knight.txt
 fi

# List the contents of both Battlefield and Archive
echo "Contents of Battlefield;"
ls Battlefield/
echo ""
echo "Contents of Archive;"
ls Archive/
