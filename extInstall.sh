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
    echo -e "\n\e[1;33m[!] Saltando descarga de MPLAB X\e[0m"
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
    echo -e "\n\e[1;33m[!] Saltando descarga de XC8\e[0m"
fi

#### Instalacion de CoppeliaSim
echo -e "\n\e[1;35m[?] Descargar CoppeliaSim?...\e[0m"
read -n 1 -p "[S/n]: " ans
if [[ $ans == "" || ($ans == "S" || $ans == "s") ]];
then
    echo -e "\n\e[1;36m[*] Iniciando descarga de CoppeliaSim...\e[0m"
    # coppeliaSim=$(curl -L "https://www.coppeliarobotics.com/downloads?flavor=edu&platform=ubuntu22-x86_64" | grep -Po "href=\"https.+xz" | grep -Po "https.+xz")
    coppeliaSim="https://downloads.coppeliarobotics.com/V4_8_0_rev0/CoppeliaSim_Edu_V4_8_0_rev0_Ubuntu24_04.tar.xz"
    wget "$coppeliaSim"
    fileName=$(ls | grep -iP "coppeliasim")
    tar -xvf $fileName &>/dev/null
    dirName=$(find -maxdepth 1 -type d | grep -iP "coppeliasim")
    mv $dirName $HOME/.bin/coppeliaSim
    STATUS=$?
    if [ $STATUS -eq 0 ]
    then
        echo -e "\e[1;32m[+] Instalacion de CoppeliaSim completada\e[0m"
    else
        echo -e "\e[1;31m[!] Error al descargar CoppeliaSim\e[0m"
    fi
else
    echo -e "\n\e[1;33m[!] Saltando descarga de CoppeliaSim\e[0m"
fi

#### Descarga de XAMPP
echo -e "\n\e[1;35m[?] Descargar XAMPP?...\e[0m"
read -n 1 -p "[S/n]: " ans
if [[ $ans == "" || ($ans == "S" || $ans == "s") ]];
then
    echo -e "\n\e[1;36m[*] Iniciando descarga de XAMPP...\e[0m"
    xampp=$(curl -L "https://www.apachefriends.org/es/index.html" | grep -Po "href=\"https.+run" | grep -Po "https.+run")
    wget "$xampp"
    STATUS=$?
    if [ $STATUS -eq 0 ]
    then
        echo -e "\e[1;32m[+] Descarga de XAMPP completada\e[0m"
    else
        echo -e "\e[1;31m[!] Error al descargar XAMPP\e[0m"
    fi
else
    echo -e "\n\e[1;33m[!] Saltando descarga de XAMPP...\e[0m"
fi

#### Instalacion de BooleDeusto
echo -e "\n\e[1;35m[?] Descargar Boole Deusto?...\e[0m"
read -n 1 -p "[S/n]: " ans
if [[ $ans == "" || ($ans == "S" || $ans == "s") ]];
then
    echo -e "\n\e[1;36m[*] Iniciando descarga de Boole Deusto...\e[0m"
    mkdir -p $HOME/.bin
    [ ! -d ./booledeusto ] && git clone https://github.com/zstars/booledeusto
    STATUS=$?
    mv ./booledeusto/exe/boole.exe $HOME/.bin
    rm -rf booledeusto
    if [ $STATUS -eq 0 ]
    then
        echo -e "\e[1;32m[+] Instalacion de Boole Deusto completada\e[0m"
    else
        echo -e "\e[1;31m[!] Error al descargar Boole Deusto\e[0m"
    fi
else
    echo -e "\n\e[1;33m[!] Saltando descarga de Boole Deusto\e[0m"
fi

#### Instalacion de xiso
echo -e "\n\e[1;35m[?] Instalar xiso?...\e[0m"
read -n 1 -p "[S/n]: " ans
if [[ $ans == "" || ($ans == "S" || $ans == "s") ]];
then
    echo -e "\n\e[1;36m[*] Iniciando instalacion de xiso...\e[0m"
    if [ ! -d $HOME/.bin/xiso ]
    then
        git clone https://github.com/XboxDev/extract-xiso $HOME/.bin/xiso
        mkdir $HOME/.bin/xiso/build
        cmake -S $HOME/.bin/xiso -B $HOME/.bin/xiso/build
        make -C $HOME/.bin/xiso/build
        STATUS=$?
        if [ $STATUS -eq 0 ]
        then
            echo -e "\e[1;32m[+] Instalacion de xiso completada\e[0m"
        else
            echo -e "\e[1;31m[!] Error al instalar xiso\e[0m"
        fi
    else
        echo -e "\e[1;31m[!] xiso ya instalado\e[0m"
    fi
else
    echo -e "\n\e[1;33m[!] Saltando instalacion de xiso\e[0m"
fi

#### Instalacion de espressif para Arduino
echo -e "\n\e[1;35m[?] Instalar Espressif?...\e[0m"
read -n 1 -p "[S/n]: " ans
if [[ $ans == "" || ($ans == "S" || $ans == "s") ]];
then
    echo -e "\n\e[1;36m[*] Iniciando instalacion de Espressif...\e[0m"
    if [ ! -d $HOME/Arduino/hardware/espressif ]
    then
        mkdir -p $HOME/Arduino/hardware/espressif
        git clone https://github.com/espressif/arduino-esp32 $HOME/Arduino/hardware/espressif/esp32
        cd $HOME/Arduino/hardware/espressif/esp32/tools
        python3 get.py
        STATUS=$?
        cd $cwd
        if [ $STATUS -eq 0 ]
        then
            echo -e "\e[1;32m[+] Instalacion de Espressif completada\e[0m"
        else
            echo -e "\e[1;31m[!] Error al instalar Espressif\e[0m"
        fi
    else
        echo -e "\e[1;31m[!] Espressif ya instalado\e[0m"
    fi
else
    echo -e "\n\e[1;33m[!] Saltando instalacion de Espressif\e[0m"
fi

#### Descarga de SimulIDE
echo -e "\n\e[1;35m[?] Descargar SimulIDE?...\e[0m"
read -n 1 -p "[S/n]: " ans
if [[ $ans == "" || ($ans == "S" || $ans == "s") ]];
then
    echo -e "\n\e[1;36m[*] Iniciando descarga de SimulIDE...\e[0m"
    # simulide=$(curl -L "https://launchpad.net/simulide/+milestone/1.0.0-sr2" | grep -Po "href=\"https.+gz\"" | grep -Po "https.+gz")
    simulide=$(curl -L "https://launchpad.net/simulide/1.0.0/1.0.0-sr2" | grep -Po "href=\"https.+gz\"" | grep -Po "https.+gz")
    # simulide=$(curl -L "https://launchpad.net/simulide/1.1.0/1.1.0-sr0" | grep -Po "href=\"https.+gz\"" | grep -Po "https.+gz")
    wget "$simulide"
    STATUS=$?
    if [ $STATUS -eq 0 ]
    then
        echo -e "\e[1;32m[+] Descarga de SimulIDE completada\e[0m"
    else
        echo -e "\e[1;31m[!] Error al descargar SimulIDE\e[0m"
    fi
else
    echo -e "\n\e[1;33m[!] Saltando descarga de SimulIDE\e[0m"
fi

#### Descarga de Ventoy
echo -e "\n\e[1;35m[?] Descargar Ventoy?...\e[0m"
read -n 1 -p "[S/n]: " ans
if [[ $ans == "" || ($ans == "S" || $ans == "s") ]];
then
    echo -e "\n\e[1;36m[*] Iniciando descarga de Ventoy...\e[0m"
    wget "https://sourceforge.net/projects/ventoy/files/v1.0.96/ventoy-1.0.96-linux.tar.gz"
    STATUS=$?
    if [ $STATUS -eq 0 ]
    then
        echo -e "\e[1;32m[+] Descarga de Ventoy completada\e[0m"
    else
        echo -e "\e[1;31m[!] Error al descargar Ventoy\e[0m"
    fi
else
    echo -e "\n\e[1;33m[!] Saltando descarga de Ventoy\e[0m"
fi

#### Instalacion de Lenguaje Latino
echo -e "\n\e[1;35m[?] Instalar Lenguaje Latino?...\e[0m"
read -n 1 -p "[S/n]: " ans
if [[ $ans == "" || ($ans == "S" || $ans == "s") ]];
then
    echo -e "\n\e[1;36m[*] Iniciando instalación de Latino...\e[0m"
    sudo apt update
    sudo apt-get install git cmake build-essential libreadline-dev libpthread-stubs0-dev
    [ ! -d $HOME/.latino-core ] && git clone https://github.com/lenguaje-latino/latino-core $HOME/.latino-core
    cmake -S $HOME/.latino-core -B $HOME/.latino-core
    sudo make -C $HOME/.latino-core install
    STATUS=$?
    if [ $STATUS -eq 0 ]
    then
        echo -e "\e[1;32m[+] Instalación de Latino completada\e[0m"
    else
        echo -e "\e[1;31m[!] Error al instalar Latino\e[0m"
    fi
else
    echo -e "\n\e[1;33m[!] Saltando instalación de Latino\e[0m"
fi

#### Descarga de rpi-imager
echo -e "\n\e[1;35m[?] Descargar rpi-imager?...\e[0m"
read -n 1 -p "[S/n]: " ans
if [[ $ans == "" || ($ans == "S" || $ans == "s") ]];
then
    echo -e "\n\e[1;36m[*] Iniciando descarga de rpi-imager...\e[0m"
    wget "https://downloads.raspberrypi.org/imager/imager_latest_amd64.deb"
    STATUS=$?
    if [ $STATUS -eq 0 ]
    then
        echo -e "\e[1;32m[+] Descarga de rpi-imager completada\e[0m"
    else
        echo -e "\e[1;31m[!] Error al descargar rpi-imager\e[0m"
    fi
else
    echo -e "\n\e[1;33m[!] Saltando descarga de rpi-imager\e[0m"
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
    echo -e "\n\e[1;33m[!] Saltando descarga de AutoIt3\e[0m"
fi

#### Descarga de FigletFonts
echo -e "\n\e[1;35m[?] Descargar FigletFonts?...\e[0m"
read -n 1 -p "[S/n]: " ans
if [[ $ans == "" || ($ans == "S" || $ans == "s") ]];
then
    echo -e "\n\e[1;36m[*] Iniciando descarga de FigletFonts...\e[0m"
    [ ! -d $HOME/figlet-fonts ] && git clone https://github.com/xero/figlet-fonts.git $HOME/figlet-fonts
    STATUS=$?
    echo -e "\e[1;32m[+] Descarga de FigletFonts completada\e[0m"
else
    echo -e "\n\e[1;33m[!] Saltando descarga de FigletFonts\e[0m"
fi

#### Descarga de programas Python
echo -e "\n\e[1;35m[?] Descargar Python Utils?...\e[0m"
read -n 1 -p "[S/n]: " ans
if [[ $ans == "" || ($ans == "S" || $ans == "s") ]];
then
    echo -e "\n\e[1;36m[*] Iniciando descarga de Python Utils...\e[0m"
    [ ! -d $HOME/.utils ] && git clone git@github.com:ian16munoz3nunez1/utils.git $HOME/.utils
    [ ! -d $HOME/.tcpIpy ] && git clone git@github.com:ian16munoz3nunez1/tcpIpy.git $HOME/.tcpIpy
    STATUS=$?
    echo -e "\e[1;32m[+] Descarga de Python Utils completada\e[0m"
else
    echo -e "\n\e[1;33m[!] Saltando descarga de Python Utils\e[0m"
fi

#### Descarga de imagenes de fondo y lanzadores
echo -e "\n\e[1;35m[?] Descargar imgs?...\e[0m"
read -n 1 -p "[S/n]: " ans
if [[ $ans == "" || ($ans == "S" || $ans == "s") ]];
then
    echo -e "\n\e[1;36m[*] Iniciando descarga de imgs...\e[0m"
    STATUS=$?
    [ ! -d $HOME/Imágenes/imgs ] && git clone git@github.com:ian16munoz3nunez1/imgs $HOME/Imágenes/imgs
    echo -e "\e[1;32m[+] Descarga de imgs completada\e[0m"
else
    echo -e "\n\e[1;33m[!] Saltando descarga de imgs\e[0m"
fi

#### Instalacion de yt-dlp
echo -e "\n\e[1;35m[?] Instalar yt-dlp?...\e[0m"
read -n 1 -p "[S/n]: " ans
if [[ $ans == "" || ($ans == "S" || $ans == "s") ]];
then
    echo -e "\n\e[1;36m[*] Iniciando instalacion de yt-dlp...\e[0m"
    sudo wget https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -O /usr/local/bin/yt-dlp
    sudo chmod a+rx /usr/local/bin/yt-dlp
else
    echo -e "\n\e[1;33m[!] Saltando instalacion de yt-dlp...\e[0m"
fi

#### Descarga de mu-editor
echo -e "\n\e[1;35m[?] Descargar mu-editor?...\e[0m"
read -n 1 -p "[S/n]: " ans
if [[ $ans == "" || ($ans == "S" || $ans == "s") ]];
then
    echo -e "\n\e[1;36m[*] Iniciando descarga de mu-editor...\e[0m"
    mu=$(curl -L 'https://codewith.mu/en/download' | grep -Po 'https.+tar')
    wget "$mu"
    STATUS=$?
    if [ $STATUS -eq 0 ]
    then
        echo -e "\e[1;32m[+] Descarga de mu-editor completada\e[0m"
    else
        echo -e "\e[1;31m[!] Error al descargar mu-editor\e[0m"
    fi
else
    echo -e "\n\e[1;33m[!] Saltando descarga de mu-editor...\e[0m"
fi

#### Descarga de Balena-Etcher
echo -e "\n\e[1;35m[?] Descargar Balena-Etcher?...\e[0m"
read -n 1 -p "[S/n]: " ans
if [[ $ans == "" || ($ans == "S" || $ans == "s") ]];
then
    echo -e "\n\e[1;36m Iniciando descarga de Balena-Etcher...\e[0m"
    balena="https://github.com/balena-io/etcher/releases/download/v1.18.11/balenaEtcher-1.18.11-x64.AppImage"
    wget "$balena"
    STATUS=$?
    if [ $STATUS -eq 0 ]
    then
        echo -e "\e[1;32m[+] Descarga de Balena-Etcher completada\e[0m"
    else
        echo -e "\e[1;31m[!] Error al descargar Balena-Etcher\e[0m"
    fi
else
    echo -e "\n\e[1;33m[!] Saltando descarga de Balena-Etcher...\e[0m"
fi

#### Descarga de iconos y temas para XFCE
echo -e "\n\e[1;35m[?] Descargar paquete de iconos?...\e[0m"
read -n 1 -p "[S/n]: " ans
if [[ $ans == "" || ($ans == "S" || $ans == "s") ]];
then
    echo -e "\n\e[1;36mIniciando descarga de Flat-Remix...\e[0m"
    flat="https://github.com/daniruiz/flat-remix"
    git clone "$flat"

    echo -e "\n\e[1;36mIniciando descarga de Infinity...\e[0m"
    infinity="https://github.com/L4ki/Infinity-Plasma-Themes"
    git clone "$infinity"

    echo -e "\n\e[1;36mIniciando descarga de Beyond...\e[0m"
    beyond="https://github.com/rickcannon/Beyond"
    git clone "$beyond"

    echo -e "\n\e[1;36mIniciando descarga de Catalina...\e[0m"
    catalina="https://github.com/zayronxio/Os-Catalina-icons"
    git clone "$catalina"

else
    echo -e "\n\e[1;33m[!] Saltando descarga de iconos y temas\e[0m"
fi

#### Descarga de OhMyBash
echo -e "\n\e[1;35m[?] Descargar OhMyBash?...\e[0m"
read -n 1 -p "[S/n]: " ans
if [[ $ans == "" || ($ans == "S" || $ans == "s") ]];
then
    echo -e "\n\e[1;36mIniciando descarga de OhMyBash...\e[0m"
    omb="https://github.com/ohmybash/oh-my-bash"
    git clone "$omb"
    bash -c "./oh-my-bash/tools/install.sh"
    STATUS=$?
    if [ $STATUS -eq 0 ];
    then
        echo -e "\e[1;32m[+] Descarga de OhMyBash completada\e[0m"
    else
        echo -e "\e[1;31m[!] Error al descargar OhMyBash\e[0m"
    fi
else
    echo -e "\n\e[1;33m[!] Saltando descarga de OhMyBash\e[0m"
fi

