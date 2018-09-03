#!/bin/bash
if [ "$1" == "" ]
then
	echo "Usage: ./geraSHA256.sh [wordlist file]"
else
	for i in $(cat $1);do
		echo -n $i":"
		echo -n $i | sha256sum | cut -d " " -f1;
	done;
fi
