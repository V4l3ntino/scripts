#!/bin/bash

#min=1
#max=6
#random_number=$(shuf -i "$min-$max" -n 1)

#Change Consecutive Wallpaper Desktop
if [[ $random_number=1 ]];then
	feh --bg-fill /home/valen/Imágenes/wallp1.jpg
fi
if [[ $random_number=2 ]];then
	feh --bg-fill /home/valen/Imágenes/wallp2.jpg
fi
if [[ $random_number=3 ]];then
	feh --bg-fill /home/valen/Imágenes/wallp3.jpg
fi
if [[ $random_number=4 ]];then
	feh --bg-fill /home/valen/Imágenes/wallpkakashi.jpg
fi
if [[ $random_number=5 ]];then
	feh --bg-fill /home/valen/Imágenes/wallpsimpson.jpg
fi
if [[ $random_number=6 ]];then
	feh --bg-fill /home/valen/Imágenes/wallpsportcar.jpg
fi
