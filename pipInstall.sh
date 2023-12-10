#!/bin/bash

echo -e "\e[1;34m[*] Iniciando instalación de paquetes pip...\e[0m"; sleep 2
pipPacks=('adafruit-ampy'
    'bs4'
    'colorama'
    'cryptography'
    'esptool'
    'flask'
    'geocoder'
    'geopy'
    'image_to_ascii'
    'keras'
    'matplotlib'
    'mpfshell'
    'mss'
    'mysql.connector'
    'numpy'
    'opencv-contrib-python'
    'pandas'
    'pillow'
    'pypng'
    'pyqrcode'
    'pyqt5'
    'pyscreenshot'
    'pyserial'
    'requests'
    'scikit-learn'
    'sockets'
    'virtualenv')

for i in ${pipPacks[@]}
do
    pip install "$i"
    STATUS=$?

    if [ $STATUS -eq 0 ]
    then
        echo -e "\e[5m\e[1;32m[+] Paquete \"$i\" instalado correctamente\e[0m";
    else
        echo -e "\e[5m\e[1;31m[!] Error al instalar el paquete \"$i\"\e[0m";
    fi
done

echo -e "\e[5m\e[1;32m[+] Instalación de paquetes pip completada\e[0m"; sleep 2

