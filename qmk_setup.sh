#!/usr/bin/env bash
cd ~
sudo mkdir ~/keebs/
cd ~/keebs/
git clone https://github.com/h34d3r/qmk_firmware.git
cd qmk_firmware
yes | sudo util/install_dependencies.sh
git submodule sync --recursive && git submodule update --init --recursive
sudo pacman -Sy base-devel unzip wget dfu-util zip gcc binutils git --noconfirm
cd ~/keebs/
git clone https://github.com/PaulStoffregen/teensy_loader_cli.git
cd ~/keebs/teensy_loader_cli
make

cd ~
teensy_3_2=$(cat .bashrc | grep "teensy_3.2_load")
if [ "$teensy_3_2" != "alias 'teensy_3.2_load'='sudo ~/keebs/teensy_loader_cli/teensy_loader_cli -mmcu=mk20dx256 -wv'" ]; then
	echo "alias 'teensy_3.2_load'='sudo ~/keebs/teensy_loader_cli/teensy_loader_cli -mmcu=mk20dx256 -wv'" >> .bashrc
fi
source .bashrc
