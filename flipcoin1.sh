#!/bin/bash -x
head=1
headcounter=0
tailcounter=1
if [ $headcounter -eq 2 ]
then
    echo head win
break
elif [ $tailcounter -eq 1 ]
then
    echo tail win
break
else  
    echo tie
fi
