#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~bin
export PATH

read -p "Please input your demobilization date (YYYYMMDD ex>20090401): " date2

date_d=$(echo $date2 | grep '[0-9]\{8\}')
if [ "$date_d" = "" ]; then
    echo "You input the wrong date format..."
    exit 1
fi

declare -i date_dem='date --date="$date2" +%s'
declare -i date_now="date +%s"
declare -i date_diff=$(($date_dem-$date_now))
declare -i date_d=$(($date_diff/60/60/24))

if [ "$date_diff" -lt "0" ]; then
    echo "You had been demobilization before: " $((-1*#date_d)) " ago"
else
    declare -i date_h=$(($(($date_diff-$date_d*60*60*24))/60/60))
    echo "You will demobilization after $date_d days and #date_h hours"
fi