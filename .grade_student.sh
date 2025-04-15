#!/bin/bash

points=0
total=0

echo "QUESTAO 1"
./questao01.sh
./.tests/fortune.sh
[[ $? -eq 0 ]] && points=$(( points + 1 ))
total=$(( total + 1))
echo

echo "QUESTAO 2"
./questao02.sh
./.tests/arquivos_criados.sh
[[ $? -eq 0 ]] && points=$(( points + 1 ))
total=$(( total + 1))
echo

echo "QUESTAO 3"
./questao03.sh
./.tests/concatenacao.sh
[[ $? -eq 0 ]] && points=$(( points + 1 ))
total=$(( total + 1))
echo

echo "QUESTAO 4"
./questao04.sh
./.tests/anexo.sh
[[ $? -eq 0 ]] && points=$(( points + 1 ))
total=$(( total + 1))
echo 

echo "QUESTAO 5"
./questao05.sh
./.tests/quantidade_linhas.sh
[[ $? -eq 0 ]] && points=$(( points + 1 ))
total=$(( total + 1))
echo 

echo "QUESTAO 6"
./questao06.sh
./.tests/quantidade_letras.sh
[[ $? -eq 0 ]] && points=$(( points + 1 ))
total=$(( total + 1))
echo

echo "QUESTAO 7"
./questao07.sh
./.tests/conteudo_etc.sh
[[ $? -eq 0 ]] && points=$(( points + 1 ))
total=$(( total + 1))
echo

echo "QUESTAO 8"
./questao08.sh
./.tests/saida_com_erros.sh
[[ $? -eq 0 ]] && points=$(( points + 1 ))
total=$(( total + 1))
echo

echo "QUESTAO 9"
./questao09.sh
./.tests/usuarios.sh
[[ $? -eq 0 ]] && points=$(( points + 1 ))
total=$(( total + 1))
echo

echo "QUESTAO 10"
./questao10.sh
./.tests/usuarios_ordenados.sh
[[ $? -eq 0 ]] && points=$(( points + 1 ))
total=$(( total + 1))
echo

echo "NOTA: ${points}/${total}"
