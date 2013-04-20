#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~bin
export PATH

echo "The www.ftp, ssh, and mail will be detect!\n"
echo "80:www\n22:sh\n21:ftp\n25:mail\n111RPC\n631CUPS\n"
echo "The test result is:-------------------"
testing=$(netstat -tuln | grep ":80 ")
if [ "$testing" != "" ]; then
    echo "WWW is running in your system!"
fi
testing=$(netstat -tuln | grep ":22 ")
if [ "$testing" != "" ]; then
    echo "SSH is running in your system!"
fi
testing=$(netstat -tuln | grep ":21 ")
if [ "$testing" != "" ]; then
    echo "FTP is running in your system!"
fi
testing=$(netstat -tuln | grep ":25 ")
if [ "$testing" != "" ]; then
    echo "MAIL is running in your system!"
fi
