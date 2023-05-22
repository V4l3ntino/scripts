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

for host in {1..254};
do
  	(ping -c 1 192.168.0.$host)&>/dev/null && echo -e " ${greenColour}[+] 192.168.0.$host HOST UP $port${endColour}" || echo " [-] $host HOST DOWN $port" &
done; wait
