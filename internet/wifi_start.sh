#!/bin/bash
sudo killall wpa_supplicant
sudo killall dhcpcd
LIST=$(cat ~/utils/internet/NETWORK_LIST)
echo "choose wifi network"
echo "options:"
echo "$LIST"
read NAME
sudo wpa_supplicant -B -i wlp1s0 -c ~/utils/internet/internet-$NAME.cfg
sudo dhcpcd wlp1s0
