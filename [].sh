#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~bin
export PATH

read -p "please input (Y/N): " yn
[ "$yn" = "Y" -o "$yn" = "y" ] && echo "OK, continue" && exit 0
[ "$yn" = "N" -o "$yn" = "n" ] && echo "Oh, interrupt!" && exit 0

echo "I do not know what your choice is" && exit 0