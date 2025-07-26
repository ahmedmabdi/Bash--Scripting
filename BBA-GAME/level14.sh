#!/bin/bash
#Create an interactive script that presents a menu with options for different system tasks 
#(e.g., check disk space, show system uptime, list users), and executes the chosen task.
echo "Choose an option:"
echo "1. Check disk space"
echo "2. Show system uptime"
echo "3. List users"

read -rp "Enter your choice [1-3]: " choice

case $choice in
    1) df -h ;; #how much free space is left on the whole system, not just in a specific folder (eg du)
    2) uptime ;;
    3) cut -d: -f1 /etc/passwd ;; #shows usernames by cutting out the first part of each line(before colon) in /etc/passwd.
    *) echo "Invalid option" ;;
esac

