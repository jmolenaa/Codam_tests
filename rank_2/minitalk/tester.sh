PID=$1
LONG=$(cat files_for_tester/test_longer)
LONGISH=$(cat files_for_tester/test_longish)
VERYLONG=$(cat files_for_tester/test_very_long)
UNICODE=$(cat files_for_tester/test_unicode)

#!/bin/zsh

printf "\n\n\033[1;32mtesting simple string\033[0m\n"
sleep 2
./client $PID "this is a string"

printf "\n\n\033[1;32mtestign empty string\033[0m\n"
sleep 2
./client $PID ""

printf "\n\n\033[1;32mtesting string with 1 character\033[0m\n"
sleep 2
./client $PID "p"

printf "\n\n\033[1;32mtesting multiple strings one after another\033[0m\n"
sleep 2
for i in {1..100};do
	./client $PID "this is string nbr $i"
done;

printf "\n\n\033[1;32mtest with 4240 characters\033[0m\n"
sleep 2
printf "\nrunning...\n"
start=$(date +%s)
./client $PID "$LONGISH"
end=$(date +%s)
printf "\nexecution took %d seconds\n" $(($end - $start))

printf "\n\n\033[1;32mtest with 14742 characters\033[0m\n"
sleep 2
printf "\nrunning...\n"
start=$(date +%s)
./client $PID "$LONG"
end=$(date +%s)
printf "\nexecution took %d seconds\n" $(($end - $start))

printf "\n\n\033[1;32mtest with 38605 characters\033[0m\n"
sleep 2
printf "\nrunning...\n"
start=$(date +%s)
./client $PID "$VERYLONG"
end=$(date +%s)
printf "\nexecution took %d seconds\n" $(($end - $start))

printf "\033[1;32m\n\ntest with unicode characters\033[0m\n"
sleep 2
printf "\nrunning...\n"
start=$(date +%s)
./client $PID "$UNICODE"
end=$(date +%s)
printf "\nexecution took %d seconds\n" $(($end - $start))
