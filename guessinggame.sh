#!/bin/bash
function guess {
	val=-1
	x=$(ls -la | wc -l)
	x=$(($x - 3))
	echo "Guess how many files in the current folder: "
	while [ $val -ne $x ]; do
		read val
		if [ "$val" -eq "$val" ] 2>/dev/null
		then
			if [ "$val" -gt "$x" ]
			then
				echo "Too high!"
				echo "Guess again: "
			elif [ "$val" -lt "$x" ]
			then
				echo "Too low!"
				echo "Guess again: "
			else
				echo "Nicely done!"
			fi
		else
			echo "Must be an integer!"
			val=-1
		fi
	done
}

guess
