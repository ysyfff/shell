#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~bin
export PATH

read -p "Please input the first number: " first
read -p "Please input the second number: " second

total=$(($first*$second))

echo "$total"