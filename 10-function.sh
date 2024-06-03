#! /bin/bash
ID=$(id -u)

VALIDATE () {

    if [ $? -ne 0 ]
    then 

        echo "Error :: Installing python is failed"

        exit1

    else

        echo  "installing python is success"

    fi

}


if [ $ID -ne 0 ]

then 
    
    echo "Error:: Please run the script with root access"

    exit1

else

    echo "you are root user"

fi

    yum install python -y

    VALIDATE

    yum install oracle -y

    VALIDATE
    




