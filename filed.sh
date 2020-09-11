#!/bin/bash
while [ $# -gt 0 ]
do
	case "$1" in
		-h|--help )
			echo "Usage: $0 [-h] [--help][-f file][--file file]"
			exit 1
			;;
		-f|--file )
			file=$2
			if ! [ -f "$file" ]; then
				echo "file doesn't exist"
				exit 1
			fi
			lines=`cat "$file" | wc -l`
			words=`cat "$file" | wc -w`
			char=`cat "$file" | wc -m`
			echo "==File: $file==="
			echo "No of lines: $lines"
			echo "No of words: $words"
			echo "No of characters: $char"
			shift #throw parameter's argument
			shift #throw parameter's value
			;;
		*)
			echo "Usage: $0 [-h] [--help] [-f file] [--file file]"
			exit 1
			;;
		esac
	done


