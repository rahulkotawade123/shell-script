#!/bin/bash -x

PRESENT=1;
PAY_PER_HOUR=20;

isPresent=$((RANDOM%2));

#echo $isPresent;

if [ $isPresent -eq $PRESENT ]
then
	echo "Employee is present";
	empHr=8;
else
	echo "Employee is absent";
	empHr=0;
fi
salary=$(($PAY_PER_HOUR * $empHr));

echo "Employee salary : $salary";
