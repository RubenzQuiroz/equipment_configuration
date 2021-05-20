#!/bin/bash
sudo apt update
sudo apt install mysql-server
sudo mysql_secure_installation

#Ajustando privilegios
sudo mysql
ALTER USER 'root'@'localhost' IDENTIFIED WITH caching_sha2_password BY '@Xime210687#';
FLUSH PRIVILEGES;

mysql -u root -p
CREATE USER 'datahome'@'localhost' IDENTIFIED BY '@Mysql210687#';
GRANT ALL PRIVILEGES ON *.* TO 'datahome'@'localhost' WITH GRANT OPTION;



CREATE USER 'scig_admin'@'%' IDENTIFIED WITH mysql_native_password BY 'Admin@210687#';