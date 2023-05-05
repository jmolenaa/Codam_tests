# this script will run the other three scripts for push_swap in one go. These include the general_test, the move_test and the random_list_test
# Default is 100, you can change the amount of tests by inputting a number as the first argument
# results endup in result_all file

GREEN='\033[0;32m'
RED='\033[0;31m'
RESET='\033[0m'
BOLD='\033[1m'

#!/bin/zsh

if [ -z "$1" ]
	then
		AMOUNT=100
	else
		AMOUNT=$1
fi

rm -rf result_all

echo "\n $BOLD Running general tests $RESET\n"

./general_test.sh 

echo "\n $BOLD Running random list tests $RESET\n"

./random_lists.sh $AMOUNT
cat random_result >> result_all

echo "\n $BOLD Running move tests $RESET\n"

./move_test.sh $AMOUNT
cat move_result >> result_all
rm -rf move_result random_result
