#!/bin/bash
printf "Choose Desktop Environment: "
read de
	startx ~/.xinitrc-$de
