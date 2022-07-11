#!/bin/bash

value=$1
while read line; do
	for word in $line; do
		if [[ "$word" =~ [A-Z] ]]
		then
			echo "$word"
		fi
	done

done < $value
