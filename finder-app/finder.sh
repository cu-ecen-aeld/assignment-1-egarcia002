#!/bin/bash

#Check if correct number of parameters were passed
if [ $# -lt 2 ]
then
    echo "Not enough arguments for " $0
    exit 1
fi

#assign variables
filesdir=$1
searchstr=$2

#check if file exists and we can write to if
if [ -d $filesdir ]
then    
    numfiles=$(grep -lr $searchstr $filesdir | wc -l)
    numlines=$(grep -r $searchstr $filesdir | wc -l)
    echo "The number of files are" $numfiles  "and the number of matching lines are" $numlines
else
    echo "Not a directory"
    exit 1
fi