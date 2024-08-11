#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%s)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

validate() {

    if [ $1 -ne 0 ]
    then 
        echo "$2 is FAILURE"
    else 
        echo "$2 is SUCCESS"
    fi        

}

if [ $USERID -ne 0 ] 
then
   echo "Please run this script with root access"
   exit 1  #manually exit if error comes

 else  
    echo "You are super user"  
  fi

dnf install mysql -y &>> $LOGFILE
validate $? Installing Mysql

#$? ---> previous command

if [$? -ne 0 ]
then
    echo "Installation of mysql is ... FAILURE"
else
    echo "Installation of mysql is ... SUCCESS" 
fi

dnf install git -y &>> $LOGFILE
validate $? Installing git

if [ $? -ne 0 ]
then
    echo "Installation of git ... FAILURE"
else
    echo "Installation of git ... SUCCESS"
fi    