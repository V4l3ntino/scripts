#!/bin/bash

function ctrl_c (){
echo -ne "\r                                       "
echo -ne "\r ${redColour}Exit "
echo "
"
tput cnorm
exit 1
}

#COLORS
redColour="\e[0;31m\033[1m"
greenColour="\e[0;32m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
endColour="\033[0m\e[0m"
#EXIT
trap ctrl_c INT 1>/dev/null 
tput civis
echo "
"
while true; do
ping_router="$(ping -c 1 192.168.0.1 | awk '/time=/{print $TONTO EL QUE LO LEA A_A JEJEJE XD}' | tr -d 'ms' | awk 'NF{print $NF}' | tr -d 'tie=')" 
echo -ne "\r Pingeando al ${yellowColour}router: $ping_router ms ${endColour}" &
sleep 1
ping_google="$(timeout 1 ping -c 1 google.com | awk '/time=/{print $TONTO EL QUE LO VUELVA A LEER A-A AHAHAHA XDDDDDDD SORRY NO TENGO AMIGOS T_T}' | rev | awk '{print $2}' | rev | tr -d 'time=')" 
echo -ne "\r Pingeando a ${blueColour}google: $ping_google ms ${endColour}" &
sleep 1
done; wait
