#!/bin/bash

echo -e "\e[1;34m[*] Iniciando configuración de Flatpak\e[0m"
sudo apt install -y flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo apt install gnome-software-plugin-flatpak
echo -e "\e[5m\e[1;32m[+] Configuración de Flatpak completada\e[0m"; sleep 2

echo -e "\e[1;34m[*] Iniciando instalación de paquetes Flatpak\e[0m"; sleep 2
flatPaks=(
    #### A
    'org.kde.akregator'
    'com.google.AndroidStudio'
    'io.github.nokse22.asciidraw'
    'io.atom.Atom'
    'org.kde.audiotube'
    'org.openchemistry.Avogadro2'
    #### B
    'org.exbin.BinEd'
    'org.blender.Blender'
    'com.github.bjaraujo.Bombermaaan'
    'com.usebottles.bottles'
    'org.gnome.Boxes'
    'com.brave.Browser'
    #### C
    'com.github.carlos157oliveira.Calculus'
    'ar.xjuan.Cambalache'
    'org.kde.cantor'
    'com.google.Chrome'
    'net.sourceforge.chromium-bsu'
    'com.ktechpit.colorwall'
    'io.github.ferraridamiano.ConverterNOW'
    'fr.nytuo.cosmiccomics'
    'com.ultimaker.cura'
    #### D
    'com.jgraph.drawio.desktop'
    'com.diy_fever.DIYLayoutCreator'
    'org.duckstation.DuckStation'
    'com.github.juzzlin.DustRacing2D'
    'ro.go.hmlendea.DL-Desktop'
    #### E
    'org.eclipse.Java'
    #### F
    'de.lernsoftware_filius.Filius'
    'com.github.johnfactotum.Foliate'
    'org.freecadweb.FreeCAD'
    'im.bernard.Funkcio'
    #### G
    'de.uni_heidelberg.zah.GaiaSky'
    'org.kde.gcompris'
    'org.gnome.gitg'
    'com.axosoft.GitKraken'
    'com.jetpackduba.Gitnuro'
    'org.gnome.Weather'
    'net.oz9aec.Gpredict'
    'com.github.artemanufrij.graphui'
    #### H
    'io.github.finefindus.Hieroglyphic'
    'com.github.hopsan.Hopsan'
    #### I
    'net.werwolv.ImHex'
    'com.jetbrains.IntelliJ-IDEA-Community'
    #### J
    'org.jupyter.JupyterLab'
    #### K
    'org.kde.kalzium'
    'org.kde.kasts'
    'org.learningequality.Kolibri'
    'org.kde.kweather'
    #### L
    'org.leocad.LeoCAD'
    'org.librepcb.LibrePCB'
    #### M
    'com.github.fabiocolacio.marker'
    'io.gitlab.zehkira.Monophony'
    'io.mpv.Mpv'
    #### O
    'md.obsidian.Obsidian'
    'com.obsproject.Studio'
    'org.onlyoffice.desktopeditors'
    'io.github.wojciech_graj.OrbVis'
    #### P
    'org.cvfosammmm.Porto'
    'com.getpostman.Postman'
    'org.ppsspp.PPSSPP'
    'org.pymol.PyMOL'
    #### Q
    'io.qt.QtCreator'
    #### R
    'cz.cvut.edu.comparch.qtrvsim'
    #### S
    'org.scilab.Scilab'
    'org.gnome.World.Secrets'
    'de.haeckerfelix.Shortwave'
    'com.github.marinm.songrec'
    'com.github.k4zmu2a.spacecadetpinball'
    'com.spotify.Client'
    'org.supertuxproject.SuperTux'
    'net.supertuxkart.SuperTuxKart'
    #### T
    'com.github.IsmaelMartinez.teams_for_linux'
    'com.github.kmwallio.thiefmd'
    'org.tigervnc.vncviewer'
    #### U
    'com.ktechpit.ultimate-media-downloader'
    #### V
    'com.github.unrud.VideoDownloader'
    'com.visualstudio.code'
    #### W
    'com.github.eneshecan.WhatsAppForLinux'
    'io.github.fkinoshita.Wildcard'
    #### X
    'app.xemu.xemu'
    #### Z
    'us.zoom.Zoom')

for i in ${flatPaks[@]}
do
    echo -e "\n\e[1;35m[?] Instalar el paquete \"$i\"?\e[0m"
    read -n 1 -p "[S/n]: " ans

    if [[ $ans == "" || ($ans == "S" || $ans == "s") ]];
    then
        echo -e "\n\e[1;36m[*] Instalando paquete \"$i\"...\e[0m"
    else
        echo -e "\n\e[1;33m[!] Saltando instalacion del paquete \"$i\"\e[0m"
        continue
    fi

    flatpak install -y "$i"
    STATUS=$?

    if [ $STATUS -eq 0 ]
    then
        echo -e "\e[5m\e[1;32m[+] Paquete \"$i\" instalado correctamente\e[0m";
    else
        echo -e "\e[5m\e[1;31m[!] Error al instalar el paquete \"$i\"\e[0m";
    fi
done
echo -e "\e[5m\e[1;32m[+] Instalación de paquetes Flatpak completada\e[0m"; sleep 2

