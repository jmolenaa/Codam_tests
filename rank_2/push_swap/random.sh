#!/bin/zsh
ARG=$(jot -r $(($1 * 5)) -2147483648 2147483647 | sort -u | sort -R | awk -v ORS=" " -v count=$1 'NR==1, NR==count { if ($1=="-0") NR--; else print $1}')
CHECK=$(echo $ARG | wc -w)
if [ $(($CHECK)) != $1 ]
then
	echo wrong
else
	echo $ARG
fi
