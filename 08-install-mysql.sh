#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then 
    echo "Error :: Please run this script with root access"
    
else
    echo "you are root user"
fi

    dnf install mysql-server -y

