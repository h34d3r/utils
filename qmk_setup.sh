#!/usr/bin/env bash
cd ~
sudo mkdir ~/keebs/
cd ~/keebs/
git clone https://github.com/h34d3r/qmk_firmware.git
cd qmk_firmware
yes | sudo util/install_dependencies.sh
yes | sudo pacman -Syu
git submodule sync --recursive && git submodule update --init --recursive
yes | sudo pacman -Syu
cd ~/keebs/
git clone https://github.com/PaulStoffregen/teensy_loader_cli.git
cd ~/keebs/teensy_loader_cli
make
yes | sudo pacman -Syu
cd ~
echo "alias 'teensy_3.2_load'='sudo ~/keebs/teensy_loader_cli/teensy_loader_cli -mmcu=mk20dx256 -wv'" >> .bashrc
source .bashrc
