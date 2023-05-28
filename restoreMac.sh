#!/bin/bash


#COLORS
greenColour="\e[0;32m\033[1m"
blueColour="\e[0;34m\033[1m"
endColour="\033[0m\e[0m"
sudo ifconfig wlan0 down
echo "
"
echo -e "${blueColour} $(sudo macchanger -p wlan0 2>/dev/null | tail -1 | tr -d "\(unknown\)" | tr -d 'Ne' | tr -d ' ' | sed 's/MAC:/wlan0 ---> /' | sed 's/It/It is /' | tr -d '\'\' | tr -d '\!' | sed 's/sthsamMAC/the same Mac/' )"
echo "
"
sudo ifconfig wlan0 up

