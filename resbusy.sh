#!/bin/bash 
while true; do 
	var=1 
	while [[ var -lt 60000 ]]; do 
		var=$(($var+1)) 
	done 
	sleep 10 
done
