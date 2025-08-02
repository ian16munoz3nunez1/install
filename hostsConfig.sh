#!/bin/bash

if [ $EUID != 0 ]
then
    echo -e "\e[5m\e[1;41mNecesita ejecutar el programa con permisos de administrador\e[0m"
    exit 1
fi

echo -e "\n10.1.0.4        dock
192.168.1.128   rpi
4.4.4.4         wrpi" >> /etc/hosts

