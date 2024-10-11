#!/bin/bash

if [[ ! -f mensagem1.txt ]]; then
	echo "ERRO: mensagem1.txt nao existe!"
	exit 1
fi

if [[ `wc -c mensagem1.txt | cut -f1 -d" "` -lt 5 ]]; then
	echo "ERRO: mensagem1.txt eh um arquivo vazio!"
	exit 2
fi

if [[ ! -f mensagem2.txt ]]; then
	echo "ERRO: mensagem2.txt nao existe!"
	exit 3
fi

if [[ `wc -c mensagem2.txt | cut -f1 -d" "` -lt 5 ]]; then
	echo "ERRO: mensagem2.txt eh um arquivo vazio!"
	exit 4
fi

if [[ ! -f mensagem3.txt ]]; then
	echo "ERRO: mensagem3.txt nao existe!"
	exit 5
fi

if [[ `wc -c mensagem3.txt | cut -f1 -d" "` -lt 5 ]]; then
	echo "ERRO: mensagem3.txt eh um arquivo vazio!"
	exit 6
fi

cat mensagem1.txt mensagem2.txt mensagem3.txt > ./teste_concatenacao.txt


if [[ `diff -q ./mensagens_antiga.txt ./teste_concatenacao.txt` == "" ]]; then 

	exit 0

else

	exit 7

fi


