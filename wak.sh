#!/bin/bash
#This script was creater by Leko from No Necesito Gremio
#for help contact him via mail
# luis.angel@vivaldi.net
#Thanks
clear
echo -e "
╔╗ ╔══╗╔══╗╔═╦╗  ╔╦═╦╗╔══╗╔╦╗╔══╗╔╦╗
║║ ║╔╗║╠══║╚╗║║  ║║║║║║╔╗║║╔╝║═╦╝║║║
║╚╗║╠╣║║══╣╔╩╗║  ║║║║║║╠╣║║╚╗║╔╝ ║║║
╚═╝╚╝╚╝╚══╝╚══╝  ╚═╩═╝╚╝╚╝╚╩╝╚╝  ╚═╝
"
echo "wakfu installer"
sleep 2
if [ ! -d "$HOME/.Ankama/Wakfu" ]; then
echo "Detectando arquitectura del sistema"
MACHINE_TYPE=`uname -m`
if [ ${MACHINE_TYPE} == 'x86_64' ]; then
  # 64-bit stuff here
  echo "Arquitectura de 64-bit detectada"
  cd $HOME
if [ ! -d ".Ankama" ]; then
  # Control will enter here if $DIRECTORY doesn't exist.
  echo "Creando carpeta en $HOME"
  mkdir .Ankama
  cd .Ankama
else
	cd .Ankama
fi

if [ ! -d "Wakfu" ]; then
#Searching Wakfu
if [ ! -f Wakfu.tar.gz ]; then
    echo "Descargando Wakfu"
    wget https://download.wakfu.com/full/linux/x64 -O $HOME/.Ankama/Wakfu.tar.gz
else
	echo "Archivo encontrado"
fi
#Searching Wakfu

#Untar Wakfu
tar -zxvf Wakfu.tar.gz
mv Wakfu Game
cd Game
#Untar Wakfu
else
	cd Game
fi

#run installer
if [ ! -d $HOME/Escritorio ]; then
echo -e "[Desktop Entry]\nVersion=1.0\nType=Application\nName=Wakfu\nComment=\nExec=/home/luis/.Ankama/Wakfu/Wakfu\nIcon=/home/luis/.Ankama/Wakfu/game/updater_data/icons/game_icon_256x256.png\nPath=\nTerminal=false\nStartupNotify=false" >> $HOME/Escritorio/Wakfu.desktop
else
echo -e "[Desktop Entry]\nVersion=1.0\nType=Application\nName=Wakfu\nComment=\nExec=/home/luis/.Ankama/Wakfu/Wakfu\nIcon=/home/luis/.Ankama/Wakfu/game/updater_data/icons/game_icon_256x256.png\nPath=\nTerminal=false\nStartupNotify=false" >> $HOME/Escritorio/Wakfu.desktop
fi
gksudo sh ./Wakfu
else
  # 32-bit stuff here
 echo "Arquitectura de 32 32-bit detectada"
  cd $HOME
if [ ! -d ".Ankama" ]; then
  # Control will enter here if $DIRECTORY doesn't exist.
  echo "Creando carpeta en $HOME"
  mkdir .Ankama
  cd .Ankama
else
	cd .Ankama
fi

if [ ! -d "Wakfu" ]; then
#Searching Wakfu
if [ ! -f Wakfu.tar.gz ]; then
    echo "Descargando Wakfu"
    wget https://download.wakfu.com/full/linux/ -O $HOME/.Ankama/Wakfu.tar.gz
else
	echo "Archivo encontrado"
fi
#Searching Wakfu

#Untar Wakfu
tar -zxvf Wakfu.tar.gz
mv Wakfu Game
cd Game
#Untar Wakfu
else
	cd Game
fi

#run installer
if [ ! -d $HOME/Escritorio ]; then
echo -e "[Desktop Entry]\nVersion=1.0\nType=Application\nName=Wakfu\nComment=\nExec=/home/luis/.Ankama/Wakfu/Wakfu\nIcon=/home/luis/.Ankama/Wakfu/game/updater_data/icons/game_icon_256x256.png\nPath=\nTerminal=false\nStartupNotify=false" >> $HOME/Escritorio/Wakfu.desktop
else
echo -e "[Desktop Entry]\nVersion=1.0\nType=Application\nName=Wakfu\nComment=\nExec=/home/luis/.Ankama/Wakfu/Wakfu\nIcon=/home/luis/.Ankama/Wakfu/game/updater_data/icons/game_icon_256x256.png\nPath=\nTerminal=false\nStartupNotify=false" >> $HOME/Escritorio/Wakfu.desktop
fi
gksudo sh ./Wakfu
fi

else
clear
echo "Wakfu ya se encuentra instalado"

fi
