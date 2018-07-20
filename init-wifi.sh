#!/bin/bash
sudo killall wpa_supplicant
sudo killall dhcpcd
sudo wpa_supplicant -B -i wlp1s0 -c ~/wifi.conf
sudo dhcpcd wlp1s0
