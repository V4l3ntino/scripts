#!/bin/bash

#Colors
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"

essid="$(iwconfig wlan0 | head -1 | awk 'NF{print $NF}' | tr -d 'ESSID:' | tr -d '"')"

echo -e "\n El nombre de la red es ${greenColour}$essid"

