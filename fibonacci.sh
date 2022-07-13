#!/bin/bash
IFS=:
if [[ "$1" = "" ]];then
	echo The syntax of the command is incorrect. Enter an argument.
	echo To learn how to use this program, enter fibonacci.sh -h or fibonacci.sh --help
	exit 0
elif [[ "$1" = "-h" ]] || [[ "$1" = "--help" ]];then
	echo With this program, you can find the nth term of the Fibonacci sequence
	echo To use this program, enter ./fibonacci [the number of the member of the Fibonacci sequence]
	echo Example 1: ./fibonacci.sh 1 
	exit 0
elif [[ "$1" -lt 0 ]];then
	echo The syntax of the command is incorrect. The argument must be positive number or 0!
	exit 0
elif [[ "$1" -gt 92 ]];then 
	echo The program cannot calculate the Fibonacci number under such a large index!
	exit 0
else
	f0=0
	f1=1
	if [[ "$1" -eq 0 ]];then
		echo The sequence element №$1: $f0
		exit 0
	fi
	for (( i=2; i <="$1"; i++ ));do
		f=$(($f0 + $f1))
		f0=$f1
		f1=$f
	done
	echo The sequence element №$1: $f1
	exit 0
fi
	