#!bin/bash
ID =$(is -u)

if [ $ID -ne 0 ]

then
    echo "Error:Please run this script with root access"

    exit1
else

    echo "you are root user"

fi

    yum install python -y

if [ $? -ne 0 ]

then 

    echo "Error:: Installing python is Failed"
    exit1

else

    echo "Installing python is Success"

fi

