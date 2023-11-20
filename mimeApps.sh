#!/bin/bash

echo -e "\n[Added Associations]
model/stl=com.ultimaker.cura.desktop;
text/plain=org.xfce.mousepad.desktop;
audio/mpeg=org.xfce.Parole.desktop;
text/csv=libreoffice-calc.desktop;
text/css=org.xfce.mousepad.desktop;
text/x-c++src=org.xfce.mousepad.desktop;
text/x-c++hdr=org.xfce.mousepad.desktop;
text/x-chdr=org.xfce.mousepad.desktop;
text/x-csrc=org.xfce.mousepad.desktop;
text/x-go=org.xfce.mousepad.desktop;
text/x-java=org.xfce.mousepad.desktop;
text/x-matlab=org.xfce.mousepad.desktop;
text/x-python=org.xfce.mousepad.desktop;
text/x-python3=org.xfce.mousepad.desktop;
text/x-tex=texmaker.desktop;
application/x-matroska=vlc.desktop;
application/javascript=org.xfce.mousepad.desktop;
application/json=org.xfce.mousepad.desktop;
application/zip=engrampa.desktop;
application/pdf=atril.desktop;
application/vnd.rar=org.kde.ark.desktop;
video/x-matroska=vlc.desktop;

[Default Applications]
text/csv=libreoffice-calc.desktop
text/css=org.xfce.mousepad.desktop
text/x-c++src=org.xfce.mousepad.desktop
text/x-c++hdr=org.xfce.mousepad.desktop
text/x-chdr=org.xfce.mousepad.desktop
text/x-csrc=org.xfce.mousepad.desktop
text/x-go=org.xfce.mousepad.desktop
text/x-java=org.xfce.mousepad.desktop
text/x-matlab=org.xfce.mousepad.desktop
text/x-python=org.xfce.mousepad.desktop
text/x-python3=org.xfce.mousepad.desktop
text/x-tex=texmaker.desktop
application/x-matroska=vlc.desktop
application/javascript=org.xfce.mousepad.desktop
application/json=org.xfce.mousepad.desktop
application/zip=engrampa.desktop
application/pdf=atril.desktop" > $HOME/.config/mimeapps.list
