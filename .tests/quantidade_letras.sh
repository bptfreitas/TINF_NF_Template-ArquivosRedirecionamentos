#!/bin/bash

expected=`grep -o 'a' ./mensagens.txt | wc -l | cut -f1 -d" "`

echo "Expected: $expected"

real=`grep -E [0-9]+ ./letras.txt`

echo "Returned: $real"

if [[ ${real} -eq ${expected} ]]; then 

	exit 0

else 

	exit 1
	
fi

