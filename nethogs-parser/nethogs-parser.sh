#!/bin/bash
printf "Data is available for:\n"

wdir=$(pwd)

cd /home/zajc/.netlogger/
ls -1
read -e -p "Choose a month: " file

cd $wdir

printf "\n"
./hogs -type=pretty /home/zajc/.netlogger/$file | grep -v root
