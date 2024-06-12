#!bin/bash
DISK_USAGE=$(df -Th | grep -vE 'tmps|File')
DISK_THERSHOLD=1
Message = "  "

while IFS= read line
do
    Usage=$(echo $line | awk '{print $6F}'|cut -d %f1)
    Partition=$(echo $line | awk '{print $1F}')
    if [ $Usage -gt $DISK_THERSHOLD ]
    then 
        Message+= "High disk usage on $Partition: $Usage\n"
    fi

done<<< $DISK_USAGE 

echo -e "Message: $Message"


