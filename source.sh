#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~bin
export PATH

nimei="nimei"
echo "when to use the method of 'sh file.sh' to excute a file, \n
It will produce a children bash. but if we use the method of \n
'source file.sh', It won't. In the later way we can call the \n
variable in the file.sh within our bash!"