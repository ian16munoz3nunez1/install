#!/bin/bash

#### Descarga de FigletFonts
git clone https://github.com/xero/figlet-fonts.git $HOME/figlet-fonts
if [ $STATUS -eq 0 ]
then
    echo -e "\e[1;32m[+] Descarga de FigletFonts completada\e[0m"
else
    echo -e "\e[1;31m[!] Error al descargar FigletFonts\e[0m"
fi

#### Descarga de programas Python
git clone git@github.com:ian16munoz3nunez1/utils.git $HOME/.utils
git clone git@github.com:ian16munoz3nunez1/tcpIpy.git $HOME/.tcpIpy
if [ $STATUS -eq 0 ]
then
    echo -e "\e[1;32m[+] Descarga de programas Python completada\e[0m"
else
    echo -e "\e[1;31m[!] Error al descargar programas Python\e[0m"
fi

#### Descarga de MPLAB X IDE/IPE
echo -e "\n\e[1;36m[*] Iniciando instalación de MPLAB X...\e[0m"
wget "https://ww1.microchip.com/downloads/aemDocuments/documents/DEV/ProductDocuments/SoftwareTools/MPLABX-v6.05-linux-installer.tar"
STATUS=$?
if [ $STATUS -eq 0 ]
then
    echo -e "\e[1;32m[+] Descarga de MPLAB X completada\e[0m"
else
    echo -e "\e[1;31m[!] Error al descargar MPLAB X\e[0m"
fi

#### Descarga del compilador XC
echo -e "\n\e[1;36m[*] Iniciando instalación de xc8...\e[0m"
wget "https://ww1.microchip.com/downloads/aemDocuments/documents/DEV/ProductDocuments/SoftwareTools/xc8-v2.45-full-install-linux-x64-installer.run"
STATUS=$?
if [ $STATUS -eq 0 ]
then
    echo -e "\e[1;32m[+] Descarga de xc8 completada\e[0m"
else
    echo -e "\e[1;31m[!] Error al descargar xc8\e[0m"
fi

#### Descarga de CoppeliaSim
echo -e "\n\e[1;36m[*] Iniciando instalación de CoppeliaSim...\e[0m"
coppeliaSim=(curl -L "https://www.coppeliarobotics.com/downloads?flavor=edu&platform=ubuntu22-x86_64" | grep -Po "href=\"https.+xz" | grep -Po "https.+xz")
wget "$coppeliaSim"
if [ $STATUS -eq 0 ]
then
    echo -e "\e[1;32m[+] Descarga de CoppeliaSim completada\e[0m"
else
    echo -e "\e[1;31m[!] Error al descargar CoppeliaSim\e[0m"
fi

#### Descarga de XAMPP
echo -e "\n\e[1;36m[*] Iniciando instalación de XAMPP...\e[0m"
xampp=$(curl -L "https://www.apachefriends.org/es/index.html" | grep -Po "href=\"https.+run" | grep -Po "https.+run")
wget "$xampp"
if [ $STATUS -eq 0 ]
then
    echo -e "\e[1;32m[+] Descarga de XAMPP completada\e[0m"
else
    echo -e "\e[1;31m[!] Error al descargar XAMPP\e[0m"
fi

#### Descarga de BooleDeusto
mkdir -p $HOME/.bin
git clone https://github.com/zstars/booledeusto
mv ./booledeusto/exe/boole.exe $HOME/.bin
rd booledeusto
if [ $STATUS -eq 0 ]
then
    echo -e "\e[1;32m[+] Descarga de Boole Deusto completada\e[0m"
else
    echo -e "\e[1;31m[!] Error al descargar Boole Deusto\e[0m"
fi

#### Descarga de xiso
git clone https://github.com/XboxDev/extract-xiso $HOME/.bin/xiso
mkdir $HOME/.bin/xiso/build
cmake -S $HOME/.bin/xiso -B $HOME/.bin/xiso/build
make -C $HOME/.bin/xiso/build

#### Descarga de espressif para Arduino
mkdir -p $HOME/Arduino/hardware/espressif
git clone https://github.com/espressif/arduino-esp32 $HOME/Arduino/hardware/espressif/esp32
python3 $HOME/Arduino/hardware/espressif/esp32/tools/get.py
if [ $STATUS -eq 0 ]
then
    echo -e "\e[1;32m[+] Descarga de Espressif completada\e[0m"
else
    echo -e "\e[1;31m[!] Error al descargar Espressif\e[0m"
fi

#### Descarga de SimulIDE
simulide=(curl -L "https://launchpad.net/simulide/+milestone/1.0.0-sr2" | grep -Po "href=\"https.+gz\"" | grep -Po "https.+gz")
wget "$simulide"
if [ $STATUS -eq 0 ]
then
    echo -e "\e[1;32m[+] Descarga de SimulIDE completada\e[0m"
else
    echo -e "\e[1;31m[!] Error al descargar SimulIDE\e[0m"
fi

#### Descarga de Ventoy
wget "https://sourceforge.net/projects/ventoy/files/v1.0.96/ventoy-1.0.96-linux.tar.gz"
if [ $STATUS -eq 0 ]
then
    echo -e "\e[1;32m[+] Descarga de Ventoy completada\e[0m"
else
    echo -e "\e[1;31m[!] Error al descargar Ventoy\e[0m"
fi

#### Descarga de Lenguaje Latino
sudo apt update
sudo apt-get install git cmake build-essential libreadline-dev libpthread-stubs0-dev
sudo git clone https://github.com/lenguaje-latino/latino-core $HOME/latino-core
sudo cmake -S $HOME/.latino-core $HOME/.latino-core
sudo make -C $HOME/latino-core install
if [ $STATUS -eq 0 ]
then
    echo -e "\e[1;32m[+] Descarga de Latino completada\e[0m"
else
    echo -e "\e[1;31m[!] Error al descargar Latino\e[0m"
fi

#### Descarga de imagenes de fondo y lanzadores
git clone https://github.com/ian16munoz3nunez1/imgs $HOME/Imágenes/imgs

