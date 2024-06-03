
# ID=$(id -u)
# TIMESTAMP=$(date +%F-%H-%M-%S)
# R="\e[31m"
# G="\e[32m"
# N="\e[0m"
# Y="\e[33m"

# LOGFILE="/tmp/$0-$TIMESTAMP.log"   #$0=script name

# echo "Script started executing at $TIMESTAMP" &>> $LOGFILE

# VALIDATE(){
#     if [ $1 -ne 0 ]  #$1=first argument name 
#     then
#         echo -e "ERROR:: $2 ... $R FAILED $N"    #$2= second argument name
#         exit 1
#     else
#         echo -e "$2 ... $G SUCCESS $N"       
#     fi
# }

# if [ $ID -ne 0 ]          #if ID not equel to 0 through the error
# then
#     echo -e "$R ERROR:: Please run this script with root access $N"
#     exit 1 # you can give other than 0
# else
#     echo "You are root user"
# fi # fi means reverse of if, indicating condition end

# yum install mysql -y &>> $LOGFILE

# VALIDATE $? "Installing MySQL"

# yum install git -y &>> $LOGFILE

# VALIDATE $? "Installing GIT"





#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
R="\e[31m"
G="\e[32m"
N="\e[0m"

LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "Script started executing at $TIMESTAMP" &>> $LOGFILE

VALIDATE(){
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

yum install mysql -y &>> $LOGFILE

VALIDATE $? "Installing MySQL"

yum install git -y &>> $LOGFILE

VALIDATE $? "Installing GIT"