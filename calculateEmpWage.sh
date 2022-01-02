#!/bin/bash -x

ABSENT=0;
PRESENT=1;
PART_TIME=2;
PAY_PER_HOUR=20;

empCheck=$((RANDOM%3));

case $empCheck in
	$PRESENT)
		echo "Employee is present";
		empHr=8;
	;;

	$PART_TIME)
		echo "Employee is working part time";
		empHr=4;
	;;

	$ABSENT)
		echo "Employee is absent";
		empHr=0;
	;;
esac;

salary=$(($PAY_PER_HOUR * $empHr));

echo "Employee salary : $salary";
