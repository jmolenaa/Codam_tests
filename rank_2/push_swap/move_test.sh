# !/bin/zsh
rm result
MAX_OPERATIONS=0
for (( i=0; i<$1;i++))
do
	echo $i
	ARG=$(./random.sh 3)
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
echo "For lists of size 3 after $1 tests the max operations are : $MAX_OPERATIONS"
echo "For lists of size 3 after $1 tests the max operations are : $MAX_OPERATIONS" >> result
echo "\nmaximum argument is $MAX_ARG\n" >> result

MAX_OPERATIONS=0
for (( i=0; i<$1;i++))
do
	echo $i
	ARG=$(./random.sh 5)
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
echo "For lists of size 5 after $1 tests the max operations are : $MAX_OPERATIONS"
echo "For lists of size 5 after $1 tests the max operations are : $MAX_OPERATIONS" >> result
echo "\nmaximum argument is $MAX_ARG\n" >> result

MAX_OPERATIONS=0
for (( i=0; i<$1;i++))
do
	echo $i
	ARG=$(./random.sh 100)
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
echo "For lists of size 100 after $1 tests the max operations are : $MAX_OPERATIONS"
echo "For lists of size 100 after $1 tests the max operations are : $MAX_OPERATIONS" >> result
echo "\nmaximum argument is $MAX_ARG\n" >> result

MAX_OPERATIONS=0
for (( i=0; i<($1 / 5);i++))
do
	echo $i
	ARG=$(./random.sh 500)
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
echo "For lists of size 500 after $(($1 / 5)) tests the max operations are : $MAX_OPERATIONS"
echo "For lists of size 500 after $(($1 / 5)) tests the max operations are : $MAX_OPERATIONS" >> result
echo "\nmaximum argument is $MAX_ARG\n" >> result
