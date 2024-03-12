#!/bin/bash

cd $HOME/Descargas
cwd=$PWD

#### Descarga de MPLAB X IDE/IPE
echo -e "\n\e[1;35m[?] Descargar MPLAB X?...\e[0m"
read -n 1 -p "[S/n]: " ans
if [[ $ans == "" || ($ans == "S" || $ans == "s") ]];
then
    echo -e "\n\e[1;36m[*] Iniciando descarga de MPLAB X...\e[0m"
    wget "https://ww1.microchip.com/downloads/en/DeviceDoc/MPLABX-v5.00-linux-installer.tar"
    STATUS=$?
    if [ $STATUS -eq 0 ]
    then
        echo -e "\e[1;32m[+] Descarga de MPLAB X completada\e[0m"
    else
        echo -e "\e[1;31m[!] Error al descargar MPLAB X\e[0m"
    fi
else
    echo -e "\e[1;33m[!] Saltando descarga de MPLAB X\e[0m"
fi

#### Descarga del compilador XC
echo -e "\n\e[1;35m[?] Descargar el compilador xc8?...\e[0m"
read -n 1 -p "[S/n]: " ans
if [[ $ans == "" || ($ans == "S" || $ans == "s") ]];
then
    echo -e "\n\e[1;36m[*] Iniciando descarga de xc8...\e[0m"
    wget "https://ww1.microchip.com/downloads/aemDocuments/documents/DEV/ProductDocuments/SoftwareTools/xc8-v2.45-full-install-linux-x64-installer.run"
    STATUS=$?
    if [ $STATUS -eq 0 ]
    then
        echo -e "\e[1;32m[+] Descarga de xc8 completada\e[0m"
    else
        echo -e "\e[1;31m[!] Error al descargar xc8\e[0m"
    fi
else
    echo -e "\e[1;33m[!] Saltando descarga de XC8\e[0m"
fi

#### Descarga de CoppeliaSim
echo -e "\n\e[1;35m[?] Descargar CoppeliaSim?...\e[0m"
read -n 1 -p "[S/n]: " ans
if [[ $ans == "" || ($ans == "S" || $ans == "s") ]];
then
    echo -e "\n\e[1;36m[*] Iniciando descarga de CoppeliaSim...\e[0m"
    coppeliaSim=$(curl -L "https://www.coppeliarobotics.com/downloads?flavor=edu&platform=ubuntu22-x86_64" | grep -Po "href=\"https.+xz" | grep -Po "https.+xz")
    echo "$coppeliaSim"
    wget "$coppeliaSim"
    if [ $STATUS -eq 0 ]
    then
        echo -e "\e[1;32m[+] Descarga de CoppeliaSim completada\e[0m"
    else
        echo -e "\e[1;31m[!] Error al descargar CoppeliaSim\e[0m"
    fi
else
    echo -e "\e[1;33m[!] Saltando descarga de CoppeliaSim\e[0m"
fi

#### Descarga de XAMPP
echo -e "\n\e[1;35m[?] Descargar XAMPP?...\e[0m"
read -n 1 -p "[S/n]: " ans
if [[ $ans == "" || ($ans == "S" || $ans == "s") ]];
then
    echo -e "\n\e[1;36m[*] Iniciando descarga de XAMPP...\e[0m"
    xampp=$(curl -L "https://www.apachefriends.org/es/index.html" | grep -Po "href=\"https.+run" | grep -Po "https.+run")
    wget "$xampp"
    if [ $STATUS -eq 0 ]
    then
        echo -e "\e[1;32m[+] Descarga de XAMPP completada\e[0m"
    else
        echo -e "\e[1;31m[!] Error al descargar XAMPP\e[0m"
    fi
else
    echo -e "\e[1;33m[!] Saltando descarga de XAMPP...\e[0m"
fi

#### Descarga de BooleDeusto
echo -e "\n\e[1;35m[?] Descargar Boole Deusto?...\e[0m"
read -n 1 -p "[S/n]: " ans
if [[ $ans == "" || ($ans == "S" || $ans == "s") ]];
then
    echo -e "\n\e[1;36m[*] Iniciando descarga de Boole Deusto...\e[0m"
    mkdir -p $HOME/.bin
    [ ! -d ./booledeusto ] && git clone https://github.com/zstars/booledeusto
    mv ./booledeusto/exe/boole.exe $HOME/.bin
    rm -r --interactive=never booledeusto
    if [ $STATUS -eq 0 ]
    then
        echo -e "\e[1;32m[+] Descarga de Boole Deusto completada\e[0m"
    else
        echo -e "\e[1;31m[!] Error al descargar Boole Deusto\e[0m"
    fi
else
    echo -e "\e[1;33m[!] Saltando descarga de Boole Deusto\e[0m"
fi

#### Descarga de xiso
echo -e "\n\e[1;35m[?] Descargar xiso?...\e[0m"
read -n 1 -p "[S/n]: " ans
if [[ $ans == "" || ($ans == "S" || $ans == "s") ]];
then
    echo -e "\e[1;36m[*] Iniciando descarga de xiso...\e[0m"
    [ ! -d $HOME/.bin/xiso ] && git clone https://github.com/XboxDev/extract-xiso $HOME/.bin/xiso
    mkdir $HOME/.bin/xiso/build
    cmake -S $HOME/.bin/xiso -B $HOME/.bin/xiso/build
    make -C $HOME/.bin/xiso/build
    if [ $STATUS -eq 0 ]
    then
        echo -e "\e[1;32m[+] Descarga de xiso completada\e[0m"
    else
        echo -e "\e[1;31m[!] Error al descargar xiso\e[0m"
    fi
else
    echo -e "\e[1;33m[!] Saltando descarga de xiso\e[0m"
fi

#### Descarga de espressif para Arduino
echo -e "\n\e[1;35m[?] Descargar Espressif?...\e[0m"
read -n 1 -p "[S/n]: " ans
if [[ $ans == "" || ($ans == "S" || $ans == "s") ]];
then
    echo -e "\e[1;36m[*] Iniciando descarga de Espressif...\e[0m"
    mkdir -p $HOME/Arduino/hardware/espressif
    [ ! -d $HOME/Arduino/hardware/espressif/esp32 ] && git clone https://github.com/espressif/arduino-esp32 $HOME/Arduino/hardware/espressif/esp32
    cd $HOME/Arduino/hardware/espressif/esp32/tools
    python3 get.py
    cd $cwd
    if [ $STATUS -eq 0 ]
    then
        echo -e "\e[1;32m[+] Descarga de Espressif completada\e[0m"
    else
        echo -e "\e[1;31m[!] Error al descargar Espressif\e[0m"
    fi
else
    echo -e "\e[1;33m[!] Saltando descarga de Espressif\e[0m"
fi

#### Descarga de SimulIDE
echo -e "\n\e[1;35m[?] Descargar SimulIDE?...\e[0m"
read -n 1 -p "[S/n]: " ans
if [[ $ans == "" || ($ans == "S" || $ans == "s") ]];
then
    echo -e "\e[1;36m[*] Iniciando descarga de SimulIDE...\e[0m"
    simulide=$(curl -L "https://launchpad.net/simulide/+milestone/1.0.0-sr2" | grep -Po "href=\"https.+gz\"" | grep -Po "https.+gz")
    wget "$simulide"
    if [ $STATUS -eq 0 ]
    then
        echo -e "\e[1;32m[+] Descarga de SimulIDE completada\e[0m"
    else
        echo -e "\e[1;31m[!] Error al descargar SimulIDE\e[0m"
    fi
else
    echo -e "\e[1;33m[!] Saltando descarga de SimulIDE\e[0m"
fi

#### Descarga de Ventoy
echo -e "\n\e[1;35m[?] Descargar Ventoy?...\e[0m"
read -n 1 -p "[S/n]: " ans
if [[ $ans == "" || ($ans == "S" || $ans == "s") ]];
then
    echo -e "\e[1;36m[*] Iniciando descarga de Ventoy...\e[0m"
    wget "https://sourceforge.net/projects/ventoy/files/v1.0.96/ventoy-1.0.96-linux.tar.gz"
    if [ $STATUS -eq 0 ]
    then
        echo -e "\e[1;32m[+] Descarga de Ventoy completada\e[0m"
    else
        echo -e "\e[1;31m[!] Error al descargar Ventoy\e[0m"
    fi
else
    echo -e "\e[1;33m[!] Saltando descarga de Ventoy\e[0m"
fi

#### Descarga de Lenguaje Latino
echo -e "\n\e[1;35m[?] Instalar Lenguaje Latino?...\e[0m"
read -n 1 -p "[S/n]: " ans
if [[ $ans == "" || ($ans == "S" || $ans == "s") ]];
then
    echo -e "\e[1;36m[*] Iniciando instalación de Latino...\e[0m"
    sudo apt update
    sudo apt-get install git cmake build-essential libreadline-dev libpthread-stubs0-dev
    [ ! -d $HOME/.latino-core ] && git clone https://github.com/lenguaje-latino/latino-core $HOME/.latino-core
    cmake -S $HOME/.latino-core -B $HOME/.latino-core
    sudo make -C $HOME/.latino-core install
    if [ $STATUS -eq 0 ]
    then
        echo -e "\e[1;32m[+] Instalación de Latino completada\e[0m"
    else
        echo -e "\e[1;31m[!] Error al instalar Latino\e[0m"
    fi
else
    echo -e "\e[1;33m[!] Saltando instalación de Latino\e[0m"
fi

#### Descarga de rpi-imager
echo -e "\n\e[1;35m[?] Descargar rpi-imager?...\e[0m"
read -n 1 -p "[S/n]: " ans
if [[ $ans == "" || ($ans == "S" || $ans == "s") ]];
then
    echo -e "\e[1;36m[*] Iniciando descarga de rpi-imager...\e[0m"
    wget "https://downloads.raspberrypi.org/imager/imager_latest_amd64.deb"
    if [ $STATUS -eq 0 ]
    then
        echo -e "\e[1;32m[+] Descarga de rpi-imager completada\e[0m"
    else
        echo -e "\e[1;31m[!] Error al descargar rpi-imager\e[0m"
    fi
else
    echo -e "\e[1;33m[!] Saltando descarga de rpi-imager\e[0m"
fi

#### Descarga de AutoIt3
echo -e "\n\e[1;35m[?] Descargar AutoIt3?...\e[0m"
read -n 1 -p "[S/n]: " ans
if [[ $ans == "" || ($ans == "S" || $ans == "s") ]];
then
    echo -e "\n\e[1;36m[*] Iniciando descarga de AutoIt3...\e[0m"
    wget "https://www.autoitscript.com/cgi-bin/getfile.pl?autoit3/autoit-v3-setup.zip" -O autoit-v3-setup.zip
    STATUS=$?
    if [ $STATUS -eq 0 ]
    then
        echo -e "\e[1;32m[+] Descarga de AutoIt3 completada\e[0m"
    else
        echo -e "\e[1;31m[!] Error al descargar AutoIt3\e[0m"
    fi
else
    echo -e "\e[1;33m[!] Saltando descarga de AutoIt3\e[0m"
fi

#### Descarga de FigletFonts
echo -e "\n\e[1;35m[?] Descargar FigletFonts?...\e[0m"
read -n 1 -p "[S/n]: " ans
if [[ $ans == "" || ($ans == "S" || $ans == "s") ]];
then
    echo -e "\e[1;36m[*] Iniciando descarga de FigletFonts...\e[0m"
    [ ! -d $HOME/figlet-fonts ] && git clone https://github.com/xero/figlet-fonts.git $HOME/figlet-fonts
    echo -e "\e[1;32m[+] Descarga de FigletFonts completada\e[0m"
else
    echo -e "\e[1;33[!] Saltando descarga de FigletFonts\e[0m"
fi

#### Descarga de programas Python
echo -e "\e[1;35m[?] Descargar Python Utils?...\e[0m"
read -n 1 -p "[S/n]: " ans
if [[ $ans == "" || ($ans == "S" || $ans == "s") ]];
then
    echo -e "\e[1;36m[*] Iniciando descarga de Python Utils...\e[0m"
    [ ! -d $HOME/.utils ] && git clone git@github.com:ian16munoz3nunez1/utils.git $HOME/.utils
    [ ! -d $HOME/.tcpIpy ] && git clone git@github.com:ian16munoz3nunez1/tcpIpy.git $HOME/.tcpIpy
    echo -e "\e[1;32m[+] Descarga de Python Utils completada\e[0m"
else
    echo -e "\e[1;33m[!] Saltando descarga de Python Utils\e[0m"
fi

#### Descarga de imagenes de fondo y lanzadores
echo -e "\e[1;35m[?] Descargar imgs?...\e[0m"
read -n 1 -p "[S/n]: " ans
if [[ $ans == "" || ($ans == "S" || $ans == "s") ]];
then
    echo -e "\e[1;36m[*] Iniciando descarga de imgs...\e[0m"
    [ ! -d $HOME/Imágenes/imgs ] && git clone git@github.com:ian16munoz3nunez1/imgs $HOME/Imágenes/imgs
    echo -e "\e[1;32m[+] Descarga de imgs completada\e[0m"
else
    echo -e "\e[1;33m[!] Saltando descarga de imgs\e[0m"
fi

