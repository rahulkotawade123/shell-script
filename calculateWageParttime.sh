#!/bin/bash -x

ABSENT=0;
PRESENT=1;
PART_TIME=2;
PAY_PER_HOUR=20;

empCheck=$((RANDOM%3));

if [ $empCheck -eq $PRESENT ]
then
	echo "Employee is present";
	empHr=8;
elif [ $empCheck -eq $PART_TIME ]
then
	echo "Employee is working part time";
	empHr=4;
else
	echo "Employee is absent";
	empHr=0;
fi
salary=$(($PAY_PER_HOUR * $empHr));

echo "Employee salary : $salary";
