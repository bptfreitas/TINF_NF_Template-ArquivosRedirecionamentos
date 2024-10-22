#!/bin/bash

for index in $(seq 1 3); do

	if [[ ! -f mensagem${index}.txt ]]; then 
	
		echo "ERRO: mensagem${index}.txt nao criado!"
	
		exit ${i}
		
	fi

done

# arquivos existem

exit 0
