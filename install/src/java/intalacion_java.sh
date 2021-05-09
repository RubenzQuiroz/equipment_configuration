#!/bin/bash

echo "Inicio y configuracion de java "
sudo apt install default-jre
sudo apt install default-jdk

sudo nano /etc/environment


echo "Instalando Spring CLI"
cp -r java/spring-2.4.5 $HOME/Documentos/libs/java/spring/cli/spring-2.4.5
sudo cp /etc/bash.bashrc /etc/bash.bashrc.back
sudo sed -i '$a SPRING_CLI_HOME=/home/sasuke/Documentos/libs/java/spring/cli/spring-2.4.5' /etc/bash.bashrc
sudo sed -i '$a PATH=$PATH:$HOME/bin:$SPRING_CLI_HOME/bin' /etc/bash.bashrcr