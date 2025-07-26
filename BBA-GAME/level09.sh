#!/bin/bash

# Write a script that monitors a directory for any changes (file creation, modification, or deletion) 
# and logs the changes with a timestamp.

Directory=$1
LOGFILE=change_log.txt


 if [ ! -d $Directory ];then 
 echo "Directory not found"
 exit 1
fi

fswatch -r "$Directory" | while read event ;do
 if [ -e $event ]; then
   echo "$( date +'Y%-m%-d%, H%-M%-S%') File modified/created : $event" >> $LOGFILE
   else 
   echo "$( date +'Y%-m%-d%, H%-M%-S%') File deleted: $event" >> $LOGFILE
   fi
   done
