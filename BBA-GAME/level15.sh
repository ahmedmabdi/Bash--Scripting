#!/bin/bash

# 1. Presents a menu to the user with the following options:
#- Check disk space
#- Show system uptime
#- Backup the Arena directory and keep the last 3 backups
#- Parse a configuration file settings.conf and display the values

#2. Execute the chosen task.

echo "Choose an option:"
echo "Option 1-Check disk space"
echo "Option 2-Show system uotime"
echo "Option 3-Backup Arena Directory"
echo "Option 4-Parse a configuration file"

read -rp "Enter your choice [1-4]"; choice

case $choice in 
            1) df -h;;
            2) uptime;;
            3)Sourcedir=Arena
 Backupdir="Backup1"

 mkdir -p "Backup1"

 Timestamp=$(date +"%Y-%m-%d_%H-%M-%S") 
 Backupname="backup.$Timestamp.tar.gz"
 tar -czf "$Backupdir/$Backupname" "$Sourcedir"
 echo "File backup created: $Backupname"

cd $Backupdir || exit
ls -t | sed -e '1,3d' | while IFS= read -r file;do
    rm -f "$file"
done ;;
            4)Config_file=setting.conf

if [ ! -f $Config_file ];then
    echo "Configuration file nonexistent"
    exit 1
fi

while IFS='=' read -r key value; do
    echo "Key: $key, Value: $value"
done < $Config_file;;
            *) echo "INVALID OPTION- CHOOSE BETWEEN 1-4";;
            esac
