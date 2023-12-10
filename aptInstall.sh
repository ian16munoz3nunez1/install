#!/bin/bash

if [ $EUID != 0 ]
then
    echo -e "\e[5m\e[1;41mNecesita ejecutar el programa con permisos de administrador \e[0m"
    exit 1
fi

echo -e "\e[1;34m[*] Iniciando instalación y actualización de paquetes apt...\e[0m"; sleep 2
sudo apt-get -y update
sudo apt-get -y upgrade

aptPacks=('adwaita-icon-theme'
    'aisleriot'
    'arduino'
    'ark'
    'armagetronad'
    'audacity'
    'breeze'
    'breeze-cursor-theme'
    'breeze-icon-theme'
    'btop'
    'caca-utils'
    'cowsay'
    'cmatrix'
    'cmake'
    'default-jdk'
    'default-jre'
    'dolphin'
    'engrampa'
    'eog'
    'falkon'
    'ffmpeg'
    'figlet'
    'file-roller'
    'filelight'
    'fortune'
    'freecad'
    'fritzing'
    'geogebra'
    'gimp'
    'gnome-chess'
    'gnome-characters'
    'gnome-clocks'
    'gnome-icon-theme'
    'gnome-mines'
    'gnome-network-displays'
    'gnome-sudoku'
    'golang-go'
    'gparted'
    'gpick'
    'gwenview'
    'hicolor-icon-theme'
    'htop'
    'inkscape'
    'kali-desktop-xfce'
    'kali-wallpapers-all'
    'kali-themes'
    'kali-undercover'
    'kate'
    'kcharselect'
    'kdeconnect'
    'kicad'
    'ktorrent'
    'libreoffice'
    'lightsoff'
    'marble'
    'mc'
    'minicom'
    'mu-editor'
    'nautilus'
    'ncal'
    'neofetch'
    'net-tools'
    'obs-studio'
    'octave'
    'octave-*'
    'openssh-client'
    'picocom'
    'pinball'
    'pinhole'
    'plank'
    'putty'
    'python3-pip'
    'qttools5-dev-tools'
    'quadrapassel'
    'rdesktop'
    'remmina'
    'rhythmbox rhythmbox-*'
    'shotcut'
    'simulide'
    'spyder'
    'ssh'
    'supertux'
    'supertuxkart'
    'swi-prolog'
    'tango-icon-theme'
    'telegram-*'
    'texlive-full'
    'texmaker'
    'thonny'
    'thunderbird thunderbird-bidiui thunderbird-l10n-es-mx'
    'tmux'
    'tor'
    'torbrowser-launcher'
    'tree'
    'ukui-themes'
    'vim-gtk3'
    'virtualbox-guest-additions-iso'
    'vsftpd'
    'wavemon'
    'wine wine64 winetricks'
    'wxmaxima'
    'xrdp'
    'yt-dlp')

for i in ${aptPacks[@]}
do
    echo -e "\n\e[1;35m[?] Instalar el paquete \"$i\"?\e[0m"
    read -n 1 -p "[S/n]: " ans

    if [[ $ans == "" || ($ans == "S" || $ans == "s") ]];
    then
        echo -e "\n\e[1;36m[*] Instalando paquete \"$i\"...\e[0m";
    else
        echo -e "\n\e[1;33m[!] Saltando instalacion del paquete \"$i\"\e[0m"
        continue
    fi

    apt-get install -y "$i"
    STATUS=$?

    if [ $STATUS -eq 0 ]
    then
        echo -e "\e[5m\e[1;32m[+] Paquete \"$i\" instalado correctamente\e[0m"
    else
        echo -e "\e[5m\e[1;31m[!] Error al instalar el paquete \"$i\"\e[0m"
    fi
done

sudo apt-get -y dist-upgrade
sudo apt-get -y autoremove
echo -e "\e[5m\e[1;32m[+] Instalación y actualización de paquetes apt completada\e[0m"; sleep 2

