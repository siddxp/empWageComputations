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

i=1
arr[$i]=$i
for ((i;i<=7;i++))
do
	if [ $randomNum -eq $isFullTime ]
	then
		arr[$i]=$salary

		totalHrs=100

	   calculateSalaryForFullMonth
	   echo "Salary for 1 month (full-time): $salary"

	   calculateSalaryForOneDayFullTime
	   echo "Salary for 1 day (full-time): $salary"
		echo "${arr[@]}"

	elif [ $randomNum -eq $isPartTime ]
	then
   	arr[$i]=$salary

		totalHrs=60

	   calculateSalaryForFullMonth
	   echo "Salary for 1 month (part-time): $salary"

	   calculateSalaryForOneDayPartTime
	   echo "Salary for 1 day (part-time): $salary"
 	   echo "${arr[@]}"

	else
		totalHr=0
		echo "Salary cannot be calculated"
      echo "${arr[@]}"
	fi
done
