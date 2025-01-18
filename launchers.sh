#!/bin/bash

if [ $EUID != 0 ]
then
    echo -e "\e[5m\e[1;41mNecesita ejecutar el programa con permisos de administrador\e[0m"
    exit 1
fi

echo -e "\e[1;35m\n[?] Crear el lanzador para Boole Deusto?...\e[0m"
read -n 1 -p "[S/n]: " ans

if [[ $ans == "" || $ans == "S" || $ans == "s" ]]
then
    touch /usr/share/applications/boole.desktop
    echo -e "[Desktop Entry]
    Type=Application
    Name=Boole Deusto
    Comment=Boolean Algebra
    Icon=/home/ianemn/Imágenes/imgs/lanzadores/deusto.bmp
    Exec=wine /home/ianemn/.bin/boole.exe 2>/dev/null
    Terminal=false
    Keywords=Boole;Deusto;Boolean;Algebra;" > /usr/share/applications/boole.desktop
else
    echo -e "\n\e[1;43m[!] Saltando la creacion del lanzador\e[0m"
fi

echo -e "\e[1;35m\n[?] Crear el lanzador para CoppeliaSim?...\e[0m"
read -n 1 -p "[S/n]: " ans

if [[ $ans == "" || $ans == "S" || $ans == "s" ]]
then
    touch /usr/share/applications/coppeliaSim.desktop
    echo -e "[Desktop Entry]
    Type=Application
    Name=CoppeliaSim
    Comment=Robotics Simulator
    Icon=/home/ianemn/Imágenes/imgs/lanzadores/coppeliaSim.png
    Exec=/home/ianemn/.bin/coppeliaSim/coppeliaSim
    Terminal=false
    Keywords=Robotics;Vrep;Coppelia;Robots;Simulator;Science;" > /usr/share/applications/coppeliaSim.desktop
else
    echo -e "\n\e[1;43m[!] Saltando la creacion del lanzador\e[0m"
fi

echo -e "\e[1;35m\n[?] Crear el lanzador para FluidSim Hidraulica?...\e[0m"
read -n 1 -p "[S/n]: " ans

if [[ $ans == "" || $ans == "S" || $ans == "s" ]]
then
    touch /usr/share/applications/fluidSimH.desktop
    echo -e "[Desktop Entry]
    Type=Application
    Name=FluidSIM Hidráulica
    Comment=Hydraulic Simulator
    Icon=/home/ianemn/Imágenes/imgs/lanzadores/fluidSim.png
    Exec=wine \"/home/ianemn/myapp/prefix/drive_c/Program Files (x86)/Didactic/fl_sim_h4.es/bin/fl_sim_h.exe\"
    Terminal=false
    Keywords=Hidraulic;Simulator;Fluid;FluidSim;" > /usr/share/applications/fluidSimH.desktop
else
    echo -e "\n\e[1;43m[!] Saltando la creacion del lanzador\e[0m"
fi

echo -e "\e[1;35m\n[?] Crear el lanzador para FluidSim Neumatica?...\e[0m"
read -n 1 -p "[S/n]: " ans

if [[ $ans == "" || $ans == "S" || $ans == "s" ]]
then
    touch /usr/share/applications/fluidSimP.desktop
    echo -e "[Desktop Entry]
    Type=Application
    Name=FluidSIM Neumática
    Comment=Neumatic Simulator
    Icon=/home/ianemn/Imágenes/imgs/lanzadores/fluidSim.png
    Exec=wine \"/home/ianemn/myapp/prefix/drive_c/Program Files (x86)/Didactic/fl_sim_p4.es/bin/fl_sim_p.exe\"
    Terminal=false
    Keywords=Neumatic;Simulator;Fluid;FluidSim;" > /usr/share/applications/fluidSimP.desktop
else
    echo -e "\n\e[1;43m[!] Saltando la creacion del lanzador\e[0m"
fi

echo -e "\e[1;35m\n[?] Crear el lanzador para FluidSim Neumatica?...\e[0m"
read -n 1 -p "[S/n]: " ans

if [[ $ans == "" || $ans == "S" || $ans == "s" ]]
then
    touch /usr/share/applications/muEditor.desktop
    echo -e "[Desktop Entry]
    Type=Application
    Name=Mu-Editor
    Comment=Python code editor
    Icon=/home/ianemn/Imágenes/imgs/lanzadores/muEditor.png
    Exec=/home/ianemn/.bin/muEditor.AppImage
    Terminal=false
    Keywords=Mu;Python;Editor;Code" > /usr/share/applications/muEditor.desktop
else
    echo -e "\n\e[1;43m[!] Saltando la creacion del lanzador\e[0m"
fi

echo -e "\e[1;35m\n[?] Crear el lanzador para SimulIDE?...\e[0m"
read -n 1 -p "[S/n]: " ans

if [[ $ans == "" || $ans == "S" || $ans == "s" ]]
then
    touch /usr/share/applications/simulIDE.desktop
    echo -e "[Desktop Entry]
    Type=Application
    Name=SimulIDE
    Comment=Electronics Simulator
    Icon=/home/ianemn/Imágenes/imgs/lanzadores/simulide.png
    Exec=/home/ianemn/.bin/simulIDE/simulide
    Terminal=false
    Keywords=Electronics;Simulator;Simul;Proteus;Multisim;" > /usr/share/applications/simulIDE.desktop
else
    echo -e "\n\e[1;43m[!] Saltando la creacion del lanzador\e[0m"
fi

echo -e "\e[1;35m\n[?] Crear el lanzador para Balena Etcher?...\e[0m"
read -n 1 -p "[S/n]: " ans

if [[ $ans == "" || $ans == "S" || $ans == "s" ]]
then
    touch /usr/share/applications/BalenaEtcher.desktop
    echo -e "[Desktop Entry]
    Type=Application
    Name=Balena Etcher
    Comment=Flasher
    Icon=/home/ianemn/Imágenes/imgs/lanzadores/balena.png
    Exec=/home/ianemn/.bin/balenaEtcher.AppImage
    Terminal=false
    Keywords=Flash;Flasher;" > /usr/share/applications/BalenaEtcher.desktop
else
    echo -e "\n\e[1;43m[!] Saltando la creacion del lanzador\e[0m"
fi

echo -e "\e[1;35m\n[?] Crear el lanzador para Balena Etcher?...\e[0m"
read -n 1 -p "[S/n]: " ans

if [[ $ans == "" || $ans == "S" || $ans == "s" ]]
then
    touch /usr/share/applications/xampp.desktop
    echo -e "[Desktop Entry]
    Type=Application
    Name=XAMPP
    Comment=Database manager
    Icon=/home/ianemn/Imágenes/imgs/lanzadores/xampp.png
    Exec=sudo /opt/lampp/manager-linux-x64.run
    Terminal=true
    Keywords=Database;PHP;SQL;MySql;" > /usr/share/applications/xampp.desktop
else
    echo -e "\n\e[1;43m[!] Saltando la creacion del lanzador\e[0m"
fi

