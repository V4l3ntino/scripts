#!/bin/bash

#COLORES
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"

#SALIDA DEL PROGRAMA
function ctrl_c (){
	echo -ne "\r         "
	echo -e "\n ${redColour}[+] Salida \n"
	exit 1
}

trap ctrl_c INT

for host in {1..254};
do
  	(ping -c 10 192.168.0.$host)&>/dev/null && echo -e " ${greenColour}[+] 192.168.0.$host HOST UP $port${endColour}" &
done; wait
