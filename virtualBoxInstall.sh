#!/bin/bash

if [ $EUID != 0 ]
then
    echo -e "\e[5m\e[1;41mNecesita ejecutar el programa con permisos de administrador\e[0m"
    exit 1
fi

echo -e "\e[1;34m[*] Iniciando instalación de VirtualBox...\e[0m"
sudo apt update
sudo apt full-upgrade -y
[ -f /var/run/reboot-required ] && sudo reboot -f
curl -fsSL https://www.virtualbox.org/download/oracle_vbox_2016.asc|sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/oracle_vbox_2016.gpg
curl -fsSL https://www.virtualbox.org/download/oracle_vbox.asc|sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/oracle_vbox.gpg
echo "deb [arch=amd64] https://download.virtualbox.org/virtualbox/debian bullseye contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list
sudo apt update
sudo apt install -y dkms
sudo apt install -y virtualbox virtualbox-ext-pack
echo -e "\e[1;32m[+] Instalación de VirtualBox completada\e[0m"; sleep 2

