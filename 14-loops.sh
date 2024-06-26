#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "Script started executing at $TIMESTAMP" &>> $LOGFILE

VALIDATE () {

if [ $1 -ne 0 ]
then
    echo -e "ERROR:: $2 ... $R FAILED $N"
    exit 1
else
    echo -e "$2 ... $G SUCCESS $N"
fi
}

if [ $ID -ne 0 ]
then
    echo -e "$R ERROR:: Please run this script with root access $N"
    exit 1 # you can give other than 0
else
    echo "You are root user"
fi # fi means reverse of if, indicating condition end

#git mysql postfix net-tools
#packges=git for the first 
#we are using for loop

for package in $@
do
yum list installed $package &>>$LOGFILE

if [ $? -ne 0 ]

then 
    yum install $package -y &>>$LOGFILE
    VALIDATE $? "Installing of  $package" #validate

else

    echo -e "$package is already installed .... $Y SKIPPING $N"
fi
done

