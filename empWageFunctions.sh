#!/bin/bash -x
randomNum=$((RANDOM%3))
isFullTime=1
isPartTime=2
workingDays=20

function calculateSalaryForFullMonth() {
   salary=$(($totalHrs*$workingDays));
}


case $randomNum in
$isFullTime)
	totalHrs=100
	calculateSalaryForFullMonth
	echo "Salary for full-time: $salary"
;;
$isPartTime)
	totalHrs=60
	calculateSalaryForFullMonth
	echo "Salary for part-time: $salary"
;;
*)
	totalHrs=0
	echo "Employee is absent, so cannot calculate wage"
;;
esac
