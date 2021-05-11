#!/bin/bash

ORACLE_BIN=$HOME/Documentos/setup/oracle/linux
cd $ORACLE_BIN

echo "Inicio deinstalacion sqldeveloper"
unzip sqldeveloper-4.0.3.zip
sudo mv sqldeveloper-4.0.3 /opt/sqldeveloper-4.0.3
sudo cp sqldeveloper.desktop  /usr/share/applications/sqldeveloper.desktop
