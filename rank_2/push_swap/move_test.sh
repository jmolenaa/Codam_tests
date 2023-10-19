#!/bin/bash

# This is a tester that runs a certain amount of tests for random lists and finds the maximum amount of operations for those lists.
# The default amount of tests for every list size is 100, except for lists size 500 which are 20.
# If you want to run more tests just run this script with the first argument being the amount of tests you want to run
# The results of the test and the list for which the maximum amount of operations was found will be in a file called move_result

GREEN='\033[0;32m'
RED='\033[0;31m'
RESET='\033[0m'
BOLD='\033[1m'

move_test (){
	MAX_OPERATIONS=0
	for (( i=0 ; i < $1 ; i++))
	do
		ARG=$(./random.sh $2)
		if [ "$ARG" = "wrong" ]
		then
			continue
		else
			OPERATIONS=$(./push_swap $ARG | wc -l)
			if [[ "$(($OPERATIONS))" > "$(($MAX_OPERATIONS))" ]]
			then
				MAX_OPERATIONS=$OPERATIONS
				MAX_ARG=$ARG
			fi
		fi
	done;
}

rm -rf move_result

if [ -z "$1" ]
	then
		AMOUNT=100
	else
		AMOUNT=$1
fi

echo -e "\n\nRunning tests for lists of size 3 ...\n"
move_test $AMOUNT 3
echo -e "For lists of size 3 after $AMOUNT tests the max operations are : $GREEN$MAX_OPERATIONS$RESET"
echo -e "For lists of size 3 after $AMOUNT tests the max operations are : $MAX_OPERATIONS" >> move_result
echo -e "\nmaximum argument is $MAX_ARG\n" >> move_result


echo -e "\n\nRunning tests for lists of size 5 ...\n"
move_test $AMOUNT 5
echo -e "For lists of size 5 after $AMOUNT tests the max operations are : $GREEN$MAX_OPERATIONS$RESET"
echo -e "For lists of size 5 after $AMOUNT tests the max operations are : $MAX_OPERATIONS" >> move_result
echo -e "\nmaximum argument is $MAX_ARG\n" >> move_result


echo -e "\n\nRunning tests for lists of size 100 ...\n"
move_test $AMOUNT 100
echo -e "For lists of size 100 after $AMOUNT tests the max operations are : $GREEN$MAX_OPERATIONS$RESET"
echo -e "For lists of size 100 after $AMOUNT tests the max operations are : $MAX_OPERATIONS" >> move_result
echo -e "\nmaximum argument is $MAX_ARG\n" >> move_result


echo -e "\n\nRunning tests for lists of size 500 ...\n"
move_test $AMOUNT 500
echo -e "For lists of size 500 after $(($AMOUNT / 5)) tests the max operations are : $GREEN$MAX_OPERATIONS$RESET"
echo -e "For lists of size 500 after $(($AMOUNT / 5)) tests the max operations are : $MAX_OPERATIONS" >> move_result
echo -e "\nmaximum argument is $MAX_ARG\n" >> move_result


