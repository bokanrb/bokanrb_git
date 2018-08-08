#!/bin/bash

if [ "$1" == "" ]
then
	echo "Usage: ./fullscan.sh [IP] [XML output]"
else
	nmap -Pn -sS -O --script=firewall-bypass $1 -oX $2
fi
