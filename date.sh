#!/bin/bash
var=$1
REG="[0-9]{1,2}\-[0-9]{1,2}\-[0-9]{1,4}"
if [[ $var =~ $REG ]]; then
	echo "Date is $var"
else
	echo "incorrect input"
	exit 1
fi
