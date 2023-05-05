# This is a tester that runs tests with random lists and checks if the lists have been sorted correctly
# It will run tests for lists sized 10, 100, 500, 1000 and then run a bunch of tests with random lists sized between 1 and 500
# The default amount of tests are set to 100 and 50 for a 1000
# If you want to change the amount of tests run the script with the first argument being the amount of tests you want to run
# If at any point a mistake is found it will put the appropiate list in a file called random_result

GREEN='\033[0;32m'
RED='\033[0;31m'
RESET='\033[0m'
BOLD='\033[1m'

set_color () {
	if [ "$1" == "OK" ]
	then
		COLOR=$GREEN
	else
		COLOR=$RED
	fi
}

test_random_lists (){
	TEST="OK"
	for (( i=0; i<$1;i++))
	do
		ARG=$(./random.sh $2)
		check=$(./push_swap $ARG | ./checker_Mac $ARG)
		if [ "$check" == "KO" ]
		then
			TEST="KO"
			echo "For lists of size $2 somethign went wrong with list\n$ARG" >> random_result
			break
		fi
	done;
	set_color $TEST
	echo "$COLOR $TEST $RESET"
}

#!/bin/zsh
rm -rf random_result

if [ -z "$1" ]
	then
		AMOUNT=100
	else
		AMOUNT=$1
fi

echo "\n$BOLD Testing random lists $RESET\n\n"

echo "\n$BOLD Testing random lists of size 10 $RESET\n\n"

test_random_lists $AMOUNT 10

echo "\n$BOLD Testing random lists of size 100 $RESET\n\n"

test_random_lists $AMOUNT 100

echo "\n$BOLD Testing random lists of size 500 $RESET\n\n"

test_random_lists $AMOUNT 500

echo "\n$BOLD Testing random lists of size 1000 $RESET\n\n"

test_random_lists $(( $AMOUNT / 2 )) 1000

echo "\n$BOLD Testing random lists of random sizes between 1 and 500$RESET\n\n"

for (( j=0; j<25;j++))
do
	AMOUNT=$(jot -r 1 1 500)
	test_random_lists 10 $AMOUNT
done;