#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~bin
export PATH

while [ "$yn" != "yes" -a "$yn" != "YES" ]
do
    read -p "Please input a yes/YES to Stop this program: " yn
done
echo "OK! you input the correct answer"

yn=""
until [ "$yn" == "yes" -o "$yn" == "YES" ]
do
    read -p "Please input a yes/YES to Stop this program: " yn
done
echo "OK! you input the correct answer"