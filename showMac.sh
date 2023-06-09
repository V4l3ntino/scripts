#!/bin/bash

#COLORS
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"

echo -e "\nLa actual mac de la ${greenColour}wlan0${endColour} es:${greenColour} $(ifconfig wlan0 | grep 'ether' | awk '{print $2}')\n"

