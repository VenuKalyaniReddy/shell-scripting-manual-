#!bin/bash

ID=$(id -u)

TIMESTAMP=$(date +%F-%H-%M-%S)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOGFILE="/tmp/$0-$TIMESTAMP.log"

VALIDATE () {
        
   if [ $1 -ne 0 ]

    then 
        echo "Error ::$2......$R FAILED $N"
        exit 1
    else
        echo "$2......$G SUCCESS $N"
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

