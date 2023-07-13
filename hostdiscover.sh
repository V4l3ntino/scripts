#!/bin/bash
latty=$(tty)
exec &>log
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

for host in {1..254};
do
  	(ping -c 10 192.168.0.$host)&>/dev/null && echo -e "192.168.0.$host" &
done; wait

exec &>$latty
echo -e "${blueColour} ------------------------------------------${endColour}"
echo -e "${blueColour}|${endColour}          ${greenColour}IPS${endColour} --> ${yellowColour}MACS${endColour}              ${blueColour}      |${endColour}"
echo -e "${blueColour} ------------------------------------------${endColour}"
cat log | while read ip;do
	mac=$(arp -n $ip | awk '{print $3}' | tail -n 1)
	echo -e "${blueColour}|------------------------------------------|${endColour}"
	echo -e "   ${greenColour} $ip ${endColour} -->${yellowColour} $mac ${endColour}"
done
echo -e "${blueColour}|------------------------------------------|${endColour}"
rm log
exit


