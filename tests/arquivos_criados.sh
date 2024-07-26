#!/bin/bash

cd ..

for index in $(seq 1 3); do

	if [[ ! -f mensagem${index}.txt ]]; then 
	
		return 1
		
	fi

done

# arquivos existem

return 0
