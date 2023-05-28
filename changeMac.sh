#!/bin/bash

#COLORS
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"

sudo ifconfig wlan0 down
sudo macchanger -a wlan0 &>/dev/null
sudo ifconfig wlan0 up

echo -e "\nLa nueva mac de la ${greenColour}wlan0${endColour} es:${greenColour} $(ifconfig wlan0 | grep 'ether' | awk '{print $2}')\n"

