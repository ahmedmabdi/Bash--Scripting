#!/bin/bash

# Write a script that checks if a file named hero.txt exists in the Arena directory

# Create Hero.txt file
touch Arena/Hero.txt

# Check if file exists in Arena directory
if [ -f Arena/Hero.txt ];then
  echo "Hero file found!!"
   else 
     echo "Hero file missing!!"
     fi

