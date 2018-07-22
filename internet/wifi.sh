#!/bin/bash
sudo killall wpa_supplicant
sudo killall dhcpcd
echo "choose wifi network"
echo "options: dad	mum	hotspot"
read wifi
sudo wpa_supplicant -B -i wlp1s0 -c internet-$wifi.cfg
sudo dhcpcd wlp1s0
