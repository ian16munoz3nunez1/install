#!/bin/bash

if [ $EUID != 0 ]
then
    echo -e "\e[5m\e[1;41mNecesita ejecutar el programa con permisos de administrador\e[0m"
    exit 1
fi

dpkg-reconfigure lightdm

cp /etc/lightdm/lightdm.conf /etc/lightdm/lightdm.conf.old
cp /etc/lightdm/lightdm-gtk-greeter.conf /etc/lightdm/lightdm-gtk-greeter.conf.old

echo -e "[greeter]
background = /usr/share/desktop-base/kali-theme/login/background
greeter-hide-users=false
theme-name = Kali-Purple-Dark
xft-antialias = true
xft-hintstyle = slight
xft-rgba = rgb
font-name = Cantarell 11
icon-theme-name = Flat-Remix-Purple-Dark
xft-dpi = 96
indicators = ~host;~spacer;~session;~layout;~a11y;~clock;~power;
clock-format = %d %b, %H:%M
screensaver-timeout = 60
default-user-image = #emblem-kali
keyboard = onboard" > /etc/lightdm/lightdm-gtk-greeter.conf

echo -e "\n[Seat:*]
greeter-hide-users=false" >> /etc/lightdm/lightdm.conf

