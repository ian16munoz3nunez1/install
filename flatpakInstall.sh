#!/bin/bash

echo -e "\e[1;34m[*] Iniciando configuración de Flatpak\e[0m"
sudo apt install -y flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo apt install gnome-software-plugin-flatpak
echo -e "\e[1;32[+] Configuración de Flatpak completada\e[0m"; sleep 2

echo -e "\e[1;34m[*] Iniciando instalación de paquetes Flatpak\e[0m"; sleep 2
flatPaks=('io.atom.Atom'
    'org.kde.audiotube'
    'org.blender.Blender'
    'com.github.bjaraujo.Bombermaaan'
    'com.usebottles.bottles'
    'com.brave.Browser'
    'com.ktechpit.colorwall'
    'com.ultimaker.cura'
    'com.jgraph.drawio.desktop'
    'ro.go.hmlendea.DL-Desktop'
    'org.eclipse.Java'
    'org.gnome.Weather'
    'com.github.hopsan.Hopsan'
    'com.jetbrains.IntelliJ-IDEA-Community'
    'org.kde.kweather'
    'org.leocad.LeoCAD'
    'com.github.fabiocolacio.marker'
    'io.mpv.Mpv'
    'org.onlyoffice.desktopeditors'
    'org.photoqt.PhotoQt'
    'com.getpostman.Postman'
    'org.ppsspp.PPSSPP'
    'org.scilab.Scilab'
    'de.haeckerfelix.Shortwave'
    'com.github.marinm.songrec'
    'com.spotify.Client'
    'com.ktechpit.ultimate-media-downloader'
    'com.visualstudio.code'
    'io.github.fkinoshita.Wildcard'
    'app.xemu.xemu'
    'us.zoom.Zoom')

for i in ${flatPaks[@]}
do
    flatpak install -y "$i"
    STATUS=$?

    if [ $STATUS -eq 0 ]
    then
        echo -e "\e[1;32m[+] Paquete \"$i\" instalado correctamente\e[0m"; sleep 2
    else
        echo -e "\e[1;31[!] Error al instalar el paquete \"$i\"\e[0m"; sleep 2
    fi
done
echo -e "\e[1;32m[+] Instalación de paquetes Flatpak completada\e[0m"; sleep 2

