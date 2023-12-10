#!/bin/bash

if [ $EUID != 0 ]
then
    echo -e "\e[5m\e[1;41mNecesita ejecutar el programa con permisos de administrador\e[0m"
    exit 1
fi

touch /usr/share/applications/coppeliaSim.desktop
echo -e "[Desktop Entry]
Type=Application
Name=CoppeliaSim
Comment=Robotics Simulator
Icon=/home/ianemn/Imágenes/imgs/lanzadores/coppeliaSim.png
Exec=/home/ianemn/.bin/coppeliaSim/coppeliaSim
Terminal=false
Keywords=Robotics;Vrep;Coppelia;Robots;Simulator;Science" > /usr/share/applications/coppeliaSim.desktop

touch /usr/share/applications/fluidSimH.desktop
echo -e "[Desktop Entry]
Type=Application
Name=FluidSIM Hidráulica
Comment=Hydraulic Simulator
Icon=/home/ianemn/Imágenes/imgs/lanzadores/fluidSim.png
Exec=wine \"/home/ianemn/myapp/prefix/drive_c/Program Files (x86)/Didactic/fl_sim_h4.es/bin/fl_sim_h.exe\"
Terminal=false
Keywords=Hidraulic;Simulator;Fluid;FluidSim;" > /usr/share/applications/fluidSimH.desktop

touch /usr/share/applications/fluidSimP.desktop
echo -e "[Desktop Entry]
Type=Application
Name=FluidSIM Neumática
Comment=Neumatic Simulator
Icon=/home/ianemn/Imágenes/imgs/lanzadores/fluidSim.png
Exec=wine \"/home/ianemn/myapp/prefix/drive_c/Program Files (x86)/Didactic/fl_sim_h4.es/bin/fl_sim_p.exe\"
Terminal=false
Keywords=Neumatic;Simulator;Fluid;FluidSim;" > /usr/share/applications/fluidSimP.desktop

