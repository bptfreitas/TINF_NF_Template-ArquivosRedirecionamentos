#!/bin/bash


test_file="./teste_qtd_linhas.txt"

cd ..

wc -l mensagens.txt | cut -f1 -d" " > ${test_file}

nr_esperado=`grep -E -o "[0-9]+" ${test_file}`

nr_obtido=`grep -E -o "[0-9]+" mensagens.txt`

if [[ $nr_obtido -eq $nr_esperado ]]; then 

	exit 0

else

	exit 1

fi
