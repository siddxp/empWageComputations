#!/bin/bash -x
randomNum=$((RANDOM%3))
isFullTime=1
isPartTime=2
workingDays=20
case $randomNum in
$isFullTime)
	totalHrs=100
;;
$isPartTime)
	totalHrs=60
;;
*)
	totalHrs=0
	echo "Employee is absent, so cannot calculate wage"
;;
esac
salary=$(($totalHrs*$workingDays))
echo "Employee Salary: $salary"
