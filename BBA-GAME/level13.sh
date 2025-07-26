#!/bin/bash

#Create a script that backs up a directory to a specified location and keeps only the last 5 backups.
 Sourcedir=Arena
 Backupdir="Backup1"

 mkdir -p "Backup1"

 Timestamp=$(date +"%Y-%m-%d_%H-%M-%S") 
 Backupname="backup.$Timestamp.tar.gz"
 tar -czf "$Backupdir/$Backupname" "$Sourcedir"
 echo "File backup created: $Backupname"

cd $Backupdir || exit
ls -t | sed -e '1,5d' | while IFS= read -r file;do
    rm -f "$file"
done 

