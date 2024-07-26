#!/bin/bash

cd ..

cat mensagem${1..3}.txt > ./.teste.txt

if [[ `diff -q ./mensagens.txt ./.teste.txt` == "" ]]; then 

	return 0

else

	return 1

fi


