#!/bin/bash
echo "Please enter your age:"
read age
[ $age -lt 20 ] && { echo sorry; exit 1;} || echo Welcome
	echo "Secrets shouldn't be revealed"
