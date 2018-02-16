#!/bin/bash
echo "Informe o seu padrão de IP"
echo "Exemplo: 127.0.0"
echo
echo -n "Informe: " && read resposta
echo
echo "Host's conectados: "
echo

for num in `seq 1 255`
do
        ping -c 1 $resposta.$num |
grep "64 bytes" | cut -d " " -f 4 |
sed 's/.$//'
done
