#!/bin/bash

echo "Atualizar o servidor"

apt-get install update 
apt-get install upgrade -y

echo "Instalar o Apache"

apt-get install apache2 -y

echo "Instalar o Unzip"

apt-get install unzip -y

echo "Baixar e Aplicar o diretório"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/ 
