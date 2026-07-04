#!/bin/bash

echo "=========================================="
echo " [IaC] Atualizando o sistema... "
echo "=========================================="
sudo apt-get update -y
sudo apt-get upgrade -y

echo "=========================================="
echo " [IaC] Instalando o Apache2 e o Unzip... "
echo "=========================================="
sudo apt-get install apache2 -y
sudo apt-get install unzip -y

echo "=========================================="
echo " [IaC] Baixando os arquivos da aplicação... "
echo "=========================================="
# Vamos para o /tmp garantir que estamos no lugar certo
cd /tmp

# Baixa o zip
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip -O main.zip

echo " [IaC] Descompactando arquivo..."
unzip -o main.zip # O -o serve para sobrescrever caso o arquivo já exista

echo "=========================================="
echo " [IaC] Fazendo o deploy no Apache... "
echo "=========================================="
# Entra na pasta que o unzip criou e copia tudo
cd linux-site-dio-main
sudo cp -R * /var/www/html/

echo "=========================================="
echo " [IaC] Script finalizado! Servidor pronto. "
echo "=========================================="
