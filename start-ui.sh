#!/bin/bash
printf "Choose Desktop Environment: "
read de

if [ "$de" == "xfce" ]; then
	startx ~/.xinitrc-xfce
else
	startx ~/.xinitrc-i3
fi
