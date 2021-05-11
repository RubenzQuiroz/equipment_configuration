#!/bin/bash

echo "Inicio y configuracion de java "
sudo apt install default-jre
sudo apt install default-jdk

#sudo nano /etc/environment

ORACLE_BIN=$HOME/Documentos/setup/java/linux/oracle
OPENJDK_BIN=$HOME/Documentos/setup/java/linux/openjdk
CLI_BIN=$HOME/Documentos/setup/java/Spring/CLI
STS=$HOME/Documentos/setup/java/Spring/sts

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

echo "Intalando OPENJDK 8"
tar xf openjdk-8u41-b04-linux-x64-14_jan_2020.tar.gz
sudo mv java-se-8u41-ri /usr/lib/jvm/openjdk-8
echo "OPENJDK 8 instalado correctamente "

echo "Intalando OPENJDK 10"
tar xf openjdk-10+44_linux-x64_bin_ri.tar.gz
sudo mv jdk-10 /usr/lib/jvm/openjdk-10
echo "OPENJDK 10 instalado correctamente "

echo "Intalando OPENJDK 12"
tar xf openjdk-12+32_linux-x64_bin.tar.gz
sudo mv jdk-12 /usr/lib/jvm/openjdk-12
echo "OPENJDK 12 instalado correctamente "

echo "Intalando OPENJDK 13"
tar xf openjdk-13+33_linux-x64_bin.tar.gz
sudo mv jdk-13 /usr/lib/jvm/openjdk-13
echo "OPENJDK 13 instalado correctamente "

echo "Intalando OPENJDK 14"
tar xf openjdk-14+36_linux-x64_bin.tar.gz
sudo mv jdk-14 /usr/lib/jvm/openjdk-14
echo "OPENJDK 14 instalado correctamente "

echo "Intalando OPENJDK 15"
tar xf openjdk-15.0.1_linux-x64_bin.tar.gz
sudo mv jdk-15.0.1 /usr/lib/jvm/openjdk-15
echo "OPENJDK 15 instalado correctamente "

cd $HOME

#MAVEN
sudo apt update
sudo apt full-upgrade
sudo apt-get install maven -y

#JAVA CONFIGURATION
echo "Configuration JAVA"
sudo sed -i '$a export JAVA_HOME=/usr/lib/jvm/java-8-oracle' /etc/bash.bashrc
sudo sed -i '$a export PATH=$PATH:$JAVA_HOME/bin' /etc/bash.bashrc

sudo sed -i '$a #MAVEN' /etc/bash.bashrc
sudo sed -i '$a export M2_HOME=/usr/share/maven' /etc/bash.bashrc
sudo sed -i '$a export MAVEN_HOME=/usr/share/maven' /etc/bash.bashrc
sudo sed -i '$a export PATH=${M2_HOME}/bin:${PATH}' /etc/bash.bashrc


echo "Instalando Spring CLI"
cd $CLI_BIN
unzip spring-boot-cli-2.4.5-bin.zip
mkdir $HOME/Documentos/libs/java/spring/cli
mv  spring-2.4.5 $HOME/Documentos/libs/java/spring/cli/spring-2.4.5
sudo cp /etc/bash.bashrc /etc/bash.bashrc.back
sudo sed -i '$a SPRING_CLI_HOME=$HOME/Documentos/libs/java/spring/cli/spring-2.4.5' /etc/bash.bashrc
sudo sed -i '$a PATH=$PATH:$HOME/bin:$SPRING_CLI_HOME/bin' /etc/bash.bashrcr

echo "Instalando Spring boot"
cd $STS
tar xf spring-tool-suite-4-4.10.0.RELEASE-e4.19.0-linux.gtk.x86_64.tar.gz
sudo mv sts-4.10.0.RELEASE /opt/sts-4.10.0.RELEASE
sudo cp sts.desktop  /usr/share/applications/sts.desktop