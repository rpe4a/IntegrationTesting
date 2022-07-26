#!/bin/sh
set -e # exit immediately if the script has errors

tests_result_file=./result/TestResults.xml
tests_container_is_finished=""
tests_container_name=$1
overall_timeout=0

printf "Checking arguments\n"
if [ -z $1 ]
then
    printf "Required arg 'tests_container_name' is null or empty\n"    
    exit 1
fi

if [ ! -z $2 ] 
then 
    overall_timeout=$2
else
    printf "Overall timeout hasn't been set so will use default timeout for 5 minutes\n" 
    overall_timeout=300 # 5 mins
fi

printf "Cleaning environment\n"
if [ -f "$tests_result_file" ]; then
    rm -i -f "$tests_result_file"
fi

printf "Run docker-compose\n"

docker-compose up -d 

trap 'docker-compose down ' EXIT # finally run docker-compose down

printf "Tests are starting\n"

sleep_timeout=1
sp='/-\|'
printf ' '
while [ -z "${tests_container_is_finished}" ] && [ "$overall_timeout" -gt 0 ]
do
    printf '\b%.1s' "$sp"
    sp=${sp#?}${sp%???}
    
    sleep $sleep_timeout

    overall_timeout=`expr $overall_timeout - $sleep_timeout`
    tests_container_is_finished=$(docker ps --filter "status=exited" --filter "name=$tests_container_name" --format '{{.Names}}')
done

printf "\n"

if [ -f "$tests_result_file" ]; then
    printf "Tests have finished. Please check 'TestResults.xml' file.\n"
    exit 0
else 
    echo "Something has gone wrong. Test result file does not exist."
    exit 1
fi