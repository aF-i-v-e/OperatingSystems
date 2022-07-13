#!/bin/bash
if [[ "$1" = "" ]];then
	echo The syntax of the command is incorrect. Enter an argument.
	echo To learn how to use this program, enter ./normconf.sh -h or ./normconf.sh --help
	exit 0
elif [[ "$1" = "-h" ]] || [[ "$1" = "--help" ]];then
	echo The argument of this program is an unnormalized configuration file that uses different units of measurement.
	echo Available units of measurement: 
	echo time – s, min, h, d
	echo distance – mm, sm, dm, m, km
	echo weight – mg, g, kg, t
	echo This program generates a new normalized file in which all units are reduced to one dimension: time – in seconds, distance – in meters, weight – in kilograms.
	echo The result of the program is saved as "original_name_without_extension_normal.txt ".
	echo Example: ./normconfig 1.txt
	exit 0
elif [[ $# -ge 2 ]];then
	echo The syntax of the command is incorrect. Enter one argument.
	echo To learn how to use this program, enter ./normconfig.sh -h or ./normconfig.sh --help
	exit 0
elif [[ ! -e "$1" ]]; then
    echo File not found
    exit 0
elif [[ -d "$1" ]];then
	echo Entered argument is a foler!
	exit 0
else
	fileName="$1"
	newFile="${fileName%.*}_normal.txt"
	if [[ -e "$newFile" ]];then
		$( rm $newFile )
	fi
	$( touch $newFile )
	IFS=$'\n'
	lineNumber=0
	cat "$1" | while read -r line ;do
		lineNumber=$(( lineNumber + 1 ))
		IFS=' '
  		type=""
  		unit=""
  		operation="+"
  		sum=0
  		isUnexpected=0
  		sentencePart1=$(echo "$line" | cut -d "=" -f 1)
		sentencePart2=$(echo "$line" | cut -d "=" -f 2)
		for i in $sentencePart2; do
			if [[ "$type" = "" ]];then
				case $i in
					*"s"|*"min"|*"h"|*"d")
						type="time"
          					unit="s"
          					;;
          				*"mm"|*"sm"|*"dm"|*"m"|*"km")
          					type="distance"
          					unit="m"
          			    		;;
          			    	*"mg"|*"g"|*"kg"|*"t")
          					type="weight"
          					unit="kg"
          			    		;;
      				esac
      				if [[ "$type" = "" ]] && [[ ! "$i" = "+" || ! "$i"="-" ]];then
                			echo Unexpected unit of measurement: "$lineNumber" : "$i"
                			isUnexpected=1
                			
            			fi
            		elif [[ ! "$i" = "-" && ! "$i" = "+" ]]; then
            			case $type in
            				"time")
            					if [[ ! "$i" = *"s" && ! "$i" = *"min" && ! "$i" = *"h" && ! "$i" = *"d" ]];then
            						echo Unexpected unit of measurement in a dimension time in "$lineNumber": "$i"
            						isUnexpected=1
            						continue
          					fi
          					;;
        				"distance")
          					if [[ ! "$i" = *"mm" && ! "$i" = *"sm" && ! "$i" = *"dm" && ! "$i" = *"m" && ! "$i" = *"km" ]];then
            						echo  Unexpected unit of measurement in a dimension diatance in "$lineNumber": "$i"
            						isUnexpected=1
            						continue
          					fi
          					;;
        				"weight")
          					if [[ ! "$i" = *"mg" && ! "$i" = *"g" && ! "$i" = *"kg" && ! "$i" = *"t" ]];then
            						echo  Unexpected unit of measurement in a dimension weight in "$lineNumber": "$i"
            						isUnexpected=1
            						continue
          					fi
          					;;
        			esac
        		fi
        		resValue=0
        		case $i in 
        			*"min")
        				i=${i%"min"}
        				resValue=$( echo "$i * 60" | bc )
        				;;
        			*"kg")
        				i=${i%"kg"}
        				resValue=$i
        				;;
      				*"mm")
        				i=${i%"mm"}
       				resValue=$( echo "scale=3; $i/1000" | bc)
       				;;
      				*"sm")
        				i=${i%"sm"}
        				resValue=$( echo "scale=3; $i/100" | bc)
        				;;
      				*"dm")
        				i=${i%"dm"}
        				resValue=$( echo "scale=3; $i/10" | bc)
        				;;
      				*"km")
        				i=${i%"km"}
        				resValue=$( echo "scale=3; $i*1000" | bc)
        				;;
      				*"mg")
        				i=${i%"mg"}
        				resValue=$( echo "scale=6; $i/1000000" | bc)
        				;;
        			*"h")
        				i=${i%"h"}
        				resValue=$( echo "$i * 3600" | bc )
        				;;
      				*"d")
        				i=${i%"d"}
        				resValue=$( echo "$i * 86400" | bc )
        				;;
      				*"g")
        				i=${i%"g"}
        				resValue=$( echo "scale=3; $i/1000" | bc)
        				;;
      				*"t")
        				i=${i%"t"}
        				resValue=$( echo "$i * 1000" | bc )
        				;;
       			 *"s")
                			i=${i%"s"}
                			resValue=$i
       				;;
       			*"m")
        				i=${i%"m"}
       			 	resValue=$i
       			 	;;
            			"+")
                			operation="+"
                			continue		
        				;;
        			"-")
                			operation="-"
                			continue
        				;;
        		esac
        		if [[ "$operation" = "+" ]]; then
            			sum=$( echo "scale=6; $sum+$resValue" | bc)
        		elif [[ "$operation" = "-" ]];then
            			sum=$( echo "scale=6; $sum-$resValue" | bc)
            			operation="+"
            		fi
		done
		if [[ "$isUnexpected" -eq 1 ]];then
			continue
		elif [[ "$type" = "" ]];then
    			echo $line>>"$newFile"
  		else
  			echo $sentencePart1=$sum$unit>>"$newFile"
  		fi
	done
fi