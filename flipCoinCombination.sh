#!/bin/bash -x

toss=$((RANDOM%2))
HEADS=1

if [ $toss -eq $HEADS ]
then
   echo "head"
else
   echo "tail"
fi
