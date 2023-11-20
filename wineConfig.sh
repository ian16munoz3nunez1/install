#!/bin/bash

if [ $EUID != 0 ]
then
    echo -e "\e[5m\e[1;41mNecesita ejecutar el programa con permisos de administrador\e[0m"
    exit 1
fi

echo -e "\e[1;34m[*] Iniciando configuración de wine...\e[0m"; sleep 2
dpkg --add-architecture i386 && apt-get update && apt-get install wine32:i386
mkdir -p ~/myapp/prefix
export WINEPREFIX=$HOME/myapp/prefix
export WINEARCH=win32
export WINEPATH=$HOME/myapp
wineboot --init winetricks
echo -e "\e[1;32m[+] Configuración de wine completada\e[0m"; sleep 2

