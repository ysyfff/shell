#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~bin
export PATH

for animal in dog cat elephant
do
    echo "There are ${animal}s.."
done

read -p "Please input a number, I will count 1+2+..+your_input: " num
s=0
for (( i=1; i<=$num; i=i+1 ))
do
    s=$(($s+$i))
done
echo "The result is: $s"
