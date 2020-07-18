#!/bin/bash -x
isFullTime=1
empRatePerHour=30
randomCheck=$(( RANDOM%2 ))
fullDayHr=8
if [ $randomCheck -eq 1 ] && [ isFullTime ]
then
	salary=$(( $empRatePerHour*$fullDayHr ))
	echo "Salary per full day is : $salary"
else
	echo "Employee is absent,so salary is 0"
fi
