#!/bin/bash
#read user input as below
echo "Type command"
read cmd_in
if grep -q $cmd_in mandatabase.txt; then
	grep $cmd_in mandatabase.txt;
else
	echo "No such command found"
fi

