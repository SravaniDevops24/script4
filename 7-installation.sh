#!/bin/bash

#sudo su ---> to get the root user access

USERID=$(id -u)
if [ $USERID -ne 0 ] 
then
   echo "Please run this script with root access"
   exit 1  #manually exit if error comes

 else  
    echo "You are super user"  
  fi

dnf install mysql -y

#$? ---> previous command

if [$? -ne 0 ]
then
    echo "Installation of mysql is ... FAILURE"
else
    echo "Installation of mysql is ... SUCCESS" 
fi

dnf install git -y 

if [ $? -ne 0 ]
then
    echo "Installation of git ... FAILURE"
else
    echo "Installation of git ... SUCCESS"
fi    


echo "is script proceeding"