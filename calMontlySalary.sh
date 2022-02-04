#!/bin/bash -x

PRESENT=1;
PART_TIME=2;
PAY_PER_HOUR=20;
WORKING_DAY=20;

totalWorkingHr=0;

for ((day=1;day<=$WORKING_DAY;day++))
do
	empCheck=$((RANDOM%3));
	case $empCheck in
		$PRESENT)
			empHr=8;
		;;

		$PART_TIME)
			empHr=4;
		;;

		*)
			empHr=0;
		;;
	esac;

	totalWorkingHr=$(($totalWorkingHr + $empHr));
done

salary=$(($totalWorkingHr * $PAY_PER_HOUR));

echo "Emp Salary of month : $salary (Total Working Hour : $totalWorkingHr)"

