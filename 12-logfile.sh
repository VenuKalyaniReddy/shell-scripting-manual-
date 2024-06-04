#!/bin/bash

ID=$(id -u)

TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

VALIDATE () {
        
   if [ $1 -ne 0 ]

    then 
        echo "Error ::$2......FAILED"
        exit 1
    else
        echo "$2......SUCCESS"
    fi
}

if [ $ID -ne 0 ]

then 

    echo "Error:: Please run this script as a rot user"

    exit 1

else

    echo "you are a root user"

fi

    yum install mysql -y &>> $LOGFILE
    
    VALIDATE $? "INSTALLING MYSQL"

    yum install git -y &>> $LOGFILE

    VALIDATE $? "INSTALLING GIT"









}



