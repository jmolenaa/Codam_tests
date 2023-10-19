# this is a script that generates random integer numbers based on the first argument, it is used by the other scripts
# if you want to use it yourself just run the script and give it the amount of numbers you want to generate as the first argument

#!/bin/bash
# ARG=$(jot -r $(($1 * 5)) -2147483648 2147483647 | sort -u | sort -R | awk -v ORS=" " -v count=$1 'NR==1, NR==count { if ($1=="-0") NR--; else print $1}')
# CHECK=$(echo $ARG | wc -w)
# if [ $(($CHECK)) != $1 ]
# then
# 	echo wrong
# else
# 	echo $ARG
# fi
shuf -i 0-4294967295 -n $1 | awk -v ORS=" " '{print (($1 - 2147483648))}'
