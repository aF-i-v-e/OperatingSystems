#!/bin/bash
IFS=:
curDir=$(pwd)
if [[ "$1" = "" ]];then
	echo The syntax of the command is incorrect. Enter an argument.
	echo To learn how to use this program, enter locator.sh -h or locator.sh --help
	exit 0
elif [[ "$1" = "-h" ]] || [[ "$1" = "--help" ]];then
	echo This program searches for the executable file in the current directory and in the Path directories and outputs the path to it.
	echo To use this program, enter ./locator.sh [executable file or internal terminal command]
	echo Example 1: ./locator.sh 1.sh 
	echo Example 2: ./locator.sh history 
	exit 0
elif [[ $# -ge 2 ]];then
	echo The syntax of the command is incorrect. Enter one argument.
	echo To learn how to use this program, enter locator.sh -h or locator.sh --help
	exit 0
elif [[ "$1" = *"/"* ]];then
	echo The syntax of the command is incorrect.The argument must be the name of the executable file with or without an extension.
	echo To learn how to use this program, enter locator.sh -h or locator.sh --help
	exit 0
else
	help $1 2>/dev/null | grep "$1:" &>/dev/null
	if  [ "$?" == "0" ];then
               echo $1 is internal terminal command.
               exit 0
        else
        	if [ -d "$curDir/$1" ];then
    			echo Entered argument is a folder.The argument must be the name of the executable file.
    			exit 0
        	elif [ -x "$curDir/$1" ]; then
    			echo $curDir/$1
    			exit 0
    		fi
		for p in $PATH
		do
			cd "$p"
			if [[ -e "$p/$1" ]] && ! [[ -d "$p/$1" ]];then
				echo $p/$1
				cd $curDir
				exit 0
			fi
		done
	fi
fi
echo Executable file $1 does not exist in this computer. 