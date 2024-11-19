#!/bin/bash

#Check if correct number of parameters were passed
if [ $# -lt 2 ]
then
    echo "Not enough arguments for" $0
    exit 1
fi

writefile=$1
writestr=$2






$(mkdir -p "$(dirname "$writefile")")
if [ $? -eq 0 ] 
then
    touch $writefile
    if [ $? -eq 0 ]
    then
        result=$(echo "$writestr" > $writefile)
    else
        echo "Could not create file file"
    fi
else
    echo "Could not create file path"
    exit 1
fi

