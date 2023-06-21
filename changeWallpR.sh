#!/bin/bash
#Change Random Wallpaper Desktop 
min=1
max=14
random_number=$(shuf -i "$min-$max" -n 1)
if [[ $random_number = 1 ]];then
	feh --bg-fill /home/valen/Imágenes/wallp1.jpg
fi
if [[ $random_number = 2 ]];then
	feh --bg-fill /home/valen/Imágenes/wallp2.jpg
fi
if [[ $random_number = 3 ]];then
	feh --bg-fill /home/valen/Imágenes/wallp3.jpg
fi
if [[ $random_number = 4 ]];then
	feh --bg-fill /home/valen/Imágenes/wallpkakashi.jpg
fi
if [[ $random_number = 5 ]];then
	feh --bg-fill /home/valen/Imágenes/wallpsimpson.jpg
fi
if [[ $random_number = 6 ]];then
	feh --bg-fill /home/valen/Imágenes/wallpsportcar.jpg
fi
if [[ $random_number = 7 ]];then
	feh --bg-fill /home/valen/Imágenes/wallpsamurai.jpg
fi
if [[ $random_number = 8 ]];then
	feh --bg-fill /home/valen/Imágenes/wallphack.jpg
fi
if [[ $random_number = 9 ]];then
        feh --bg-fill /home/valen/Imágenes/wallpaper_1.jpg
fi
if [[ $random_number = 10 ]];then
        feh --bg-fill /home/valen/Imágenes/wallpaper_2.jpg
fi
if [[ $random_number = 11 ]];then
        feh --bg-fill /home/valen/Imágenes/wallpaper_3.jpg
fi
if [[ $random_number = 12 ]];then
        feh --bg-fill /home/valen/Imágenes/wallpaper_4.jpg
fi
if [[ $random_number = 13 ]];then
        feh --bg-fill /home/valen/Imágenes/wallpaper_5.jpg
fi
if [[ $random_number = 14 ]];then
        feh --bg-fill /home/valen/Imágenes/wallpdarkmountain.jpg
fi
