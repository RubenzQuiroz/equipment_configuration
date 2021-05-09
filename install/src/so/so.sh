#!/bin/bash
echo "Actualizando SO "
sudo apt-get update && sudo apt-get upgrade

echo "Instalando lista de dispositivos"
sudo apt install exfat-fuse exfat-utils hfsplus hfsutils ntfs-3g

echo "Instalando aplicaiones restringidas "
sudo apt install ubuntu-restricted-extras
sudo apt-get install libdvdcss2
sudo dpkg-reconfigure libdvd-pkg
sudo fc-cache -fv
echo "Instalar Google Chrome"
# Instalar Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo gdebi google-chrome-stable_current_amd64.deb
# Instalar Chromium
sudo apt install -y chromium-browser
echo "instalando compresores "
sudo apt install p7zip-full p7zip-rar unrar
echo "Depurando archivos inecesarios"
sudo apt autoremove
echo "Instalando herramientas tpl"
sudo apt install tlp tlp-rdw
sudo tlp start
echo "Instalando impresoras"
sudo apt install printer-driver-all
echo "instalando Aplicaciones "
sudo apt install gufw
sudo apt install aptitude
sudo apt install gdebi-core gdebi
sudo apt install bluefish
sudo apt install bleachbit
sudo apt install htop
sudo apt install smplayer
sudo apt install vlc
sudo apt-get install krita
sudo apt-get install notepadqq
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt update
sudo apt install google-chrome-stable

#Instalacion de conky
sudo apt-get install conky-all
sudo apt-get install lm-sensors
sudo sensors-detect
	
#Instalacion de VSC
sudo snap install --classic code
sudo apt update
sudo apt install software-properties-common apt-transport-https wget
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install code
sudo apt update
sudo apt upgrade

sudo apt-get update -y
sudo apt-get install -y sshpass



