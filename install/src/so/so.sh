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




