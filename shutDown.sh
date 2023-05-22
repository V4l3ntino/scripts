#!/bin/bash
greenColour="\e[0;32m\033[1m"

endColour="\033[0m\e[0m"

redColour="\e[0;31m\033[1m"

blueColour="\e[0;34m\033[1m"

yellowColour="\e[0;33m\033[1m"

purpleColour="\e[0;35m\033[1m"

turquoiseColour="\e[0;36m\033[1m"

grayColour="\e[0;37m\033[1m"
function ctrl_c(){
echo -ne "\r ${redColour}[!] Cancelando autodestrucción${endColour}"
sleep 1
echo -ne "\r ${greenColour}[+] Autodestrucción cancelada exitósamente${endColour} \n" 
echo "
"
sleep 1
tput cnorm
exit
}
trap ctrl_c INT 
tput civis
echo "
"
echo -ne "\r${blueColour}Hasta la próximaaaaaaaa${endColour}"
sleep 5
shutdown -h now


