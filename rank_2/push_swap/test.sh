#!/bin/bash

error_check () {
	if [ "$1" == "Error" ]
	then
		echo "Error message	$GREEN"OK"$RESET"
	else
		echo "Error message	$RED"KO"$RESET"
	fi
	if [ "$2" == 0 ]
	then
		echo -e "Exit status	$RED"KO"$RESET\n"
	else
		echo -e "Exit status	$GREEN"OK"$RESET\n"
	fi
}

error_check lol 0

for i in {1..$1}
do
	echo $i
done;
