#!/bin/bash -x
isFullTime=1
isPartTime=2
empRatePerHour=30
fullDayHr=8
partTimeHr=4
randomCheck=$(( RANDOM%3 ))
if [ $isFullTime -eq $randomCheck ]
then
	salary=$(( $empRatePerHour*$fullDayHr ))
	echo "Salary for full day is : $salary "

elif [ $isPresent -lt $randomCheck ]
then
   salary=$(( $empRatePerHour*$partTimeHr ))
	echo "Salary for part time employee is : $salary "

else
	echo "Employee is absent,salary is 0"
fi
