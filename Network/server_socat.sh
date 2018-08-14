#!/bin/bash

echo "Digite a porta a ser aberta na sua maquina:        "
read premote
echo "Digite a porta que sera usada para acessar o servico localmente:          "
read plocal
echo "Digite o seu IP Publico:                                 "
read ippub
echo "Qual IP roda o servico no alvo:                          "
read ipservice
echo "Qual a porta do servico a ser redirecionado:             "
read predir
echo "Gerando script socat_client.sh....."
touch socat_client.sh
echo "#!/bin/bash" > socat_client.sh
echo "while true;" >> socat_client.sh
echo "do" >> socat_client.sh
echo "socat TCP4:$ippub:$premote TCP4:$ipservice:$predir;" >> socat_client.sh
echo "done" >> socat_client.sh
echo "Script socat_client.sh gerado com sucesso. Execute ./socat_client.sh no alvo"
echo "Aguardando conexao na porta" $premote
socat TCP4-LISTEN:$premote,reuseaddr,fork TCP4-LISTEN:$plocal,reuseaddr
