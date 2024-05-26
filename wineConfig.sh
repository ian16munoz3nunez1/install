#!/bin/bash

echo -e "\e[1;34m[*] Iniciando configuración de wine...\e[0m"; sleep 2
sudo dpkg --add-architecture i386 && sudo apt-get update && sudo apt-get install wine32:i386

[ ! -d $HOME/myapp/prefix ] && mkdir -p ~/myapp/prefix
export WINEPREFIX=$HOME/myapp/prefix
export WINEARCH=win32
export WINEPATH=$HOME/myapp
wineboot --init winetricks

echo -e "\e[1;32m[+] Configuración de wine completada\e[0m"; sleep 2

