#!/bin/bash -x

a=10;
b=12;

if [ $a -gt $b ]
then
	echo "value of a is greater than b";
else
	echo "value of b is greater than a";
fi
