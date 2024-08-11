#!/bin/bash

echo "print all values: $@"

echo "print num of values: $#"

echo "print name of the script: $0"

echo "print current working directory: $PWD"

echo "print Hostname: $HOSTNAME"

echo "print which user is running this script: $USER"

echo "print home directory of current user: $HOME"

echo "print process ID of current shell script: $$"

sleep 10 &

echo "print process ID of last background command: $!"


