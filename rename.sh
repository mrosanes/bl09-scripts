#!/usr/bin/env bash

if [ "$1" == "-h" ] ; then
    echo "rename needs three arguments:"
    echo '- dir path'
    echo '- patter 1'
    echo '- patter 2'
    exit 0
fi

if [ $# -lt 3 ]
  then
    echo "Not enough arguments supplied"
    echo "Execute rename -h to show the help "
    exit -1
fi

# cfalcon script for rename files

path=$1
patter1=$2
patter2=$3

for file in $( ls $path/*.xrm )
do
    mv -i "${file}" "${file/$patter1/$patter2}"
done
