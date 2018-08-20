#!/bin/bash
echo "what is the network's SSID?"
read SSID
echo "what is the network's PASSWORD?"
read PASS
echo "what do you want to call this network?"
read NAME

wpa_passphrase "$SSID" "$PASS" > ~/utils/internet/internet-$NAME.cfg
echo "$NAME" >> ~/utils/internet/NETWORK_LIST
