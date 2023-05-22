#!/bin/bash

function ctrl_c (){
	echo -e "\n[+] Saliendo \n"
	exit 1
}
#COLORS
greenColour="\e[0;32m\033[1m"
blueColour="\e[0;34m\033[1m"
endColour="\033[0m\e[0m"
#EXIT
trap ctrl_c INT
loop="$(ping -c1 192.168.0.1 | head -2 | tail -1 | tr -d 'ms' | tr -d 'tie=' | awk 'NF{print $NF}')"

while true; do
    ping_router="$(ping -c 1 192.168.0.1 | awk '/time=/{print $TONTO EL QUE LO LEA A_A JEJEJE XD}' | tr -d 'ms' | awk 'NF{print $NF}' | tr -d 'tie=')" 
    echo -ne "\r Pingeando al router: ${greenColour} $ping_router ms ${endColour}"
    sleep 1
    ping_google="$(ping -c 1 google.com | awk '/time=/{print $TONTO EL QUE LO VUELVA A LEER A-A AHAHAHA XDDDDDDD SORRY NO TENGO AMIGOS T_T}' | rev | awk '{print $2}' | rev | tr -d 'time=')" 
    echo -ne "\r Pingeando a ${blueColour}google:${endColour} ${greenColour} $ping_google ms ${endColour}"
    sleep 1
done; 
