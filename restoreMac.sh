#!/bin/bash

#COLORS
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
echo "
"
sudo ifconfig wlan0 down
echo -e "$(sudo macchanger -p wlan0 2>/dev/null | tail -1 | tr -d "\(unknown\)" | tr -d 'Ne' | tr -d ' ' | sed 's/MAC:/MAC ---> /')"
sudo ifconfig wlan0 up

echo -e "\n ${greenColour} RESTORED MAC"
