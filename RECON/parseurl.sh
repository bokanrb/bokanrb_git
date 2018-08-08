#!/bin/bash

if [ "$1" == "" ]
then
echo "					      "
echo " ____        _         _   _      ____  "
echo "| __ )  ___ | | ___ __| \ | |_ __| __ ) "
echo "|  _ \ / _ \| |/ / '__|  \| | '__|  _ \ "
echo "| |_) | (_) |   <| |  | |\  | |  | |_) |"
echo "|____/ \___/|_|\_\_|  |_| \_|_|  |____/ "
echo "					      "
echo "					      "
echo "  Usage: ./parseurl [www.website.com]   "

else 
       wget -q $1.$url | grep href | cut -d "/" -f3 | grep "\." | cut -d '"' -f1
        for url in $1;do host $url;done | grep "has address"
fi


