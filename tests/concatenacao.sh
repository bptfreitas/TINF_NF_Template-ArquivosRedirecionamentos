#!/bin/bash

cd ..

cat mensagem1.txt mensagem2.txt mensagem3.txt > ./.teste.txt

if [[ `diff -q ./mensagens.txt ./.teste.txt` == "" ]]; then 

	exit 0

else

	exit 1

fi


