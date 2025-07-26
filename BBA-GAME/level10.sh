#!/bin/bash

# Step 1: Create directory
mkdir -p Arena_Boss


# Creates 5 text files inside the directory, named file1.txt to file5.txt.
# Generates a random number of lines (between 10 and 20) in each file.

for i in {1..5};do
FILE=Arena_Boss/files$i.txt
LINES=$(( RANDOM % 11 + 10 ))
for j in $(seq 1 $LINES);do
echo " This is line $j " >> $FILE
done 
done 

echo "Files sorted by size;"
find Arena_Boss -type f -exec ls -lh {} + | sort -k 5,5 -h

# Checks if any of the files contain the word 'Victory', and if found, moves the file to a directory called Victory_Archive.
mkdir -p V_Archive
for FILE in Arena_Boss/*.txt
do 
if grep "Victory" $FILE ; then 
 mv $FILE V_Archive/
 echo "$FILE containing "Victory" has been moved to V_Archive"
fi
done

