#!/bin/bash -x
randomNum=$((RANDOM%3))
isFullTime=1
isPartTime=2
workingDays=20
wagePerHr=20
fullTimeHours=8
partTimeHours=4

function calculateSalaryForFullMonth() {
   salary=$(($totalHrs*$workingDays));
}

function calculateSalaryForOneDayFullTime() {
	salary=$(($fullTimeHours*$wagePerHr))
}

function calculateSalaryForOneDayPartTime() {
   salary=$(($partTimeHours*$wagePerHr))
}

case $randomNum in
$isFullTime)
	totalHrs=100

	calculateSalaryForFullMonth
	echo "Salary for 1 month (full-time): $salary"

   calculateSalaryForOneDayFullTime
	echo "Salary for 1 day (full-time): $salary"
;;
$isPartTime)
	totalHrs=60

	calculateSalaryForFullMonth
	echo "Salary for 1 month (part-time): $salary"

	calculateSalaryForOneDayPartTime
	echo "Salary for 1 day (part-time): $salary"
;;
*)
	totalHrs=0
	echo "Employee is absent, so cannot calculate wage"
;;
esac
