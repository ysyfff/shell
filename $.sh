#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~bin
export PATH

echo "The script name is   ------ $0"
echo "total para number is ------ $#"
[ "$#" -lt 2 ] && echo "the number of para is too less " && exit 0
echo "your whole para is   ------ '$@'"
echo "The 1st parameter    ------ $1"
echo "The 2st parameter    ------ $2"
echo "The 3st parameter    ------ $3"