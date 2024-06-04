#!bin/bash
ID =$(is -u)

if [ $ID -ne 0 ]

then
    echo "Error:Please run this script with root access"

    exit 1
else

    echo "you are root user"

fi

    yum install git -y

if [ $? -ne 0 ]

then 

    echo "Error:: Installing GIT is Failed"
    exit 1

else

    echo "Installing GIT is Success"

fi


