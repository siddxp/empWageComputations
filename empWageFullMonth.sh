#!/bin/bash -x
randomNum=$((RANDOM%3))
isFullTime=1
isPartTime=2
wagePerHr=20
workingDays=20
case $randomNum in
$isFullTime)
	empHr=8
;;
$isPartTime)
	empHr=4
;;
*)
	empHr=0
	echo "Employee is absent, so cannot calculate wage"
;;
esac
salary=$(($empHr*$wagePerHr*$workingDays))
echo "Employee Salary: $salary"
