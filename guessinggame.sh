#!/bin/bash
val=-1
x=$(ls -l | wc -l)
x=$(($x - 1))
while [ $val -ne $x ]; do
	echo "Guess: "
	read val
	if [ "$val" -eq "$val" ] 2>/dev/null
	then
		if [ "$val" -gt "$x" ]
		then
			echo "Too high!"
		elif [ "$val" -lt "$x" ]
		then
			echo "Too low!"
		else
			echo "Nice!"
		fi
	else
		echo "Must be an integer!"
		val=-1
	fi
done
