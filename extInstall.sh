#!/bin/bash

echo -e "\n\e[1;36m[*] Iniciando instalación de MPLAB X...\e[0m"
wget "https://ww1.microchip.com/downloads/aemDocuments/documents/DEV/ProductDocuments/SoftwareTools/MPLABX-v6.05-linux-installer.tar"
STATUS=$?
if [ $STATUS -eq 0 ]
then
    echo -e "\e[1;32m[+] Instalación de MPLAB X completada\e[0m"
else
    echo -e "\e[1;31m[!] Error al instalar MPLAB X\e[0m"
    exit 1
fi

echo -e "\n\e[1;36m[*] Iniciando instalación de xc8...\e[0m"
wget "https://ww1.microchip.com/downloads/aemDocuments/documents/DEV/ProductDocuments/SoftwareTools/xc8-v2.45-full-install-linux-x64-installer.run"
STATUS=$?
if [ $STATUS -eq 0 ]
then
    echo -e "\e[1;32m[+] Instalación de xc8 completada\e[0m"
else
    echo -e "\e[1;31m[!] Error al instalar xc8\e[0m"
fi

echo -e "\n\e[1;36m[*] Iniciando instalación de CoppeliaSim...\e[0m"
wget "https://www.coppeliarobotics.com/files/V4_6_0_rev8/CoppeliaSim_Edu_V4_6_0_rev8_Ubuntu22_04.tar.xz"
if [ $STATUS -eq 0 ]
then
    echo -e "\e[1;32m[+] Instalación de CoppeliaSim completada\e[0m"
else
    echo -e "\e[1;31m[!] Error al instalar CoppeliaSim\e[0m"
fi

echo -e "\n\e[1;36m[*] Iniciando instalación de XAMPP...\e[0m"
wget "https://sourceforge.net/projects/xampp/files/XAMPP%20Linux/8.2.4/xampp-linux-x64-8.2.4-0-installer.run"
if [ $STATUS -eq 0 ]
then
    echo -e "\e[1;32m[+] Instalación de XAMPP completada\e[0m"
else
    echo -e "\e[1;31m[!] Error al instalar XAMPP\e[0m"
fi

