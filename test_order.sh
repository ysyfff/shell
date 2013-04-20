#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~bin
export PATH

echo "Please input a file, I will check the filename's type, and \
permission.\n\n"

read -p "Input a filename: " filename
#judge if the user input a real string
test -z $filename && echo "You must inut a filename." && exit 0

test ! -e $filename && echo "The filename '$filename' DO NOT exist" && exit 0

test -f $filename && filetype="regulare file"
test -d $filename && filetype="directory"
test -r $filename && perm="readable"
test -w $filename && perm="$perm writable"
test -x $filename && perm="$perm executable"

echo "The filename: $filename is a $filetype"
echo "And the permisson are: $perm"