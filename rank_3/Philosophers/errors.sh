#!/bin/bash

GREEN='\033[0;32m'
RED='\033[0;31m'
RESET='\033[0m'

test(){
	ARG=$(echo $?)
	if [[ ${ARG} == 1 ]]
	then
		echo -e "${GREEN}OK${RESET}"
	else
		echo -e "${RED}KO${RESET}"
	fi
}



./philo 0 1 1 1 2> /dev/null
test
./philo 00 1 1 1 2> /dev/null
test
./philo 0000000 1 1 1 2> /dev/null
test
./philo - 1 1 1 2> /dev/null
test
./philo "" 1 1 1 2> /dev/null
test
./philo + 1 1 1 1 2> /dev/null
test

./philo 1 1 1 2> /dev/null
test
./philo 1 1 1 1 1 1 2> /dev/null
test
./philo 0 1 1 1 2> /dev/null
test
./philo 1 0 1 1 2> /dev/null
test
./philo 1 1 0 1 2> /dev/null
test
./philo 1 1 1 0 2> /dev/null
test
./philo 1 1 1 1 0 2> /dev/null
test
./philo 001 1 1 1 2> /dev/null
test
./philo 01 1 1 1 2> /dev/null
test
./philo -01 1 1 1 2> /dev/null
test
./philo -1 1 1 1 2> /dev/null
test
./philo 3001 1 1 1 2> /dev/null
test
./philo 1312312312 1 1 1 2> /dev/null
test
./philo 3 100000000 1 1 2> /dev/null
test
./philo 3 0 1 1 2> /dev/null
test
./philo 3 1565464654 1 1 2> /dev/null
test
./philo 3 4294967295 1 1 2> /dev/null
test
./philo 3 4294967296 1 1 2> /dev/null
test
./philo 3 1 4294967296 1 2> /dev/null
test
./philo 3 1 1 4294967296 2> /dev/null
test
./philo 3 1 1 1 4294967296 2> /dev/null
test
./philo 3 1 1 1 4299000000 2> /dev/null
test
./philo 3 86400001 1 1 2> /dev/null
test
./philo 3 1 86400001 1 2> /dev/null
test
./philo 3 1 1 86400001 2> /dev/null
test
./philo 3 1 1 1 86400001 2> /dev/null
test
./philo 3 1 1 1.22 2> /dev/null
test
./philo 3 1 1 "" 2> /dev/null
test
./philo 3 1 "" 1 2> /dev/null
test
./philo 3 "" 1 1 2> /dev/null
test
./philo "" 1 1 1 2> /dev/null
test
./philo 3 1 1 1 "" 2> /dev/null
test
./philo 01 1 1 1 2> /dev/null
test
./philo 3 01 1 1 2> /dev/null
test
./philo 3 1 01 1 2> /dev/null
test
./philo 3 1 1 01 2> /dev/null
test
./philo 3 1 1 1 01 2> /dev/null
test
./philo 3 1 1 1 0 2> /dev/null
test
./philo 3 1 1 000000000001 2> /dev/null
test
./philo 3 1 1 00000000000 2> /dev/null
test
./philo 3 1 1 1 asd 2> /dev/null
test
./philo 3 1 1 asd 1 2> /dev/null
test
./philo 3 1 asd 1 1 2> /dev/null
test
./philo 3 asd 1 1 1 2> /dev/null
test
./philo asd 1 1 1 1 2> /dev/null
test
