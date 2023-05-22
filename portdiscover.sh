#!/bin/bash
#SALIDA DEL PROGRAMA
function ctrl_c (){
	echo -e "\n [+] Salida \n"
	exit 1
}

trap ctrl_c INT

#COLORES
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"

for port in {1..1000};
do
  	(timeout 1 echo "" > /dev/tcp/localhost/$port)2>/dev/null && echo -e " ${greenColour}[+] OPEND PORT $port${endColour}" || echo " [-] CLOSED PORT $port" &
done; wait
