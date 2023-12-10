#!/bin/bash

git clone https://github.com/xero/figlet-fonts.git $HOME/figlet-fonts

git clone git@github.com:ian16munoz3nunez1/utils.git $HOME/.utils
git clone git@github.com:ian16munoz3nunez1/tcpIpy.git $HOME/.tcpIpy

git clone https://github.com/zstars/booledeusto
mv ./booledeusto/exe/boole.exe $HOME/.bin
rd booledeusto

git clone https://github.com/XboxDev/extract-xiso.git $HOME/.bin/xiso
mkdir $HOME/.bin/xiso/build
cmake -S $HOME/.bin/xiso -B $HOME/.bin/xiso/build
make -C $HOME/.bin/xiso/build

sudo apt update
sudo apt-get install git cmake build-essential libreadline-dev libpthread-stubs0-dev
sudo git clone https://github.com/lenguaje-latino/latino-core $HOME/latino-core
sudo cmake -S $HOME/.latino-core $HOME/.latino-core
sudo make -C $HOME/latino-core install

