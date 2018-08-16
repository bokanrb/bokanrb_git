#!/bin/bash
if [ "$1" == "" ]
then
	echo "Usage: ./geraMD5.sh [wordlist file]"
else
	for i in $(cat $1);do
		echo -n $i":"
		echo -n $i | md5sum | cut -d " " -f1;
	done;
fi
