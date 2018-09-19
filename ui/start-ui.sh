#!/bin/bash
printf "Choose Desktop Environment: "
read de
	startx ~/utils/ui/.xinitrc-$de
