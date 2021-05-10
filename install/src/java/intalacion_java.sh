#!/bin/bash

echo "Inicio y configuracion de java "
sudo apt install default-jre
sudo apt install default-jdk

sudo nano /etc/environment

ORACLE_BIN=$HOME/Documentos/setup/java/linux/oracle
OPENJDK_BIN=$HOME/Documentos/setup/java/linux/openjdk

#ORACLE
echo "Instalando JDK ORACLE"
cd $ORACLE_BIN

echo "Intalando JDK 6"
./jdk-6u45-linux-x64.bin
sudo mv  jdk1.6.0_45 /usr/lib/jvm/java-6-oracle
echo "JDK 6 instalado correctamente "

echo "Intalando JDK 7"
tar xf jdk-7u80-linux-x64.tar.gz
sudo mv jdk1.7.0_80 /usr/lib/jvm/java-7-oracle
echo "JDK 7 instalado correctamente "

echo "Intalando JDK 8"
tar xf jdk-8u271-linux-x64.tar.gz
sudo mv jdk1.8.0_271 /usr/lib/jvm/java-8-oracle
echo "JDK 8 instalado correctamente "

echo "Intalando JDK 11"
tar xf jdk-11.0.9_linux-x64_bin.tar.gz
sudo mv jdk-11.0.9 /usr/lib/jvm/java-11-oracle
echo "JDK 11 instalado correctamente "

echo "Intalando JDK 16"
tar xf jdk-16.0.1_linux-x64_bin.tar.gz
sudo mv jdk-16.0.1 /usr/lib/jvm/java-16-oracle
echo "JDK 16 instalado correctamente "

echo "Instalando OPENJDK"
cd $OPENJDK_BIN

echo "Intalando OPENJDK 7"
tar xf openjdk-7u75-b13-linux-x64-18_dec_2014.tar.gz
sudo mv java-se-7u75-ri /usr/lib/jvm/openjdk-7
echo "OPENJDK 7 instalado correctamente "

echo "Instalando Spring CLI"
cp -r java/spring-2.4.5 $HOME/Documentos/libs/java/spring/cli/spring-2.4.5
sudo cp /etc/bash.bashrc /etc/bash.bashrc.back
sudo sed -i '$a SPRING_CLI_HOME=/home/sasuke/Documentos/libs/java/spring/cli/spring-2.4.5' /etc/bash.bashrc
sudo sed -i '$a PATH=$PATH:$HOME/bin:$SPRING_CLI_HOME/bin' /etc/bash.bashrcr