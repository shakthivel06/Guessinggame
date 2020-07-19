#!/usr/bin/env bash

#Assignment for Unix workbench course

ct_f=$(ls -1 | wc -l)

echo "Welcome to the guessing game"

function checkloop {
		if [[ $resp -ne $ct_f ]]
		then
			if [[ $resp -lt $ct_f ]]
			then
				echo "Your guess is too low, try again:"
				return
			elif [[ $resp -gt $ct_f ]]
			then
				echo "Your guess is too high,try again:"
				return
				fi
		else
		echo "Congratulations, your guess is correct"
		fi
}

echo "Please enter the number of files in the current directory:"
while [[ $resp -ne $ct_f ]]
do
	read resp
	checkloop resp ct_f
done
