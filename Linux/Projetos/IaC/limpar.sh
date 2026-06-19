#!/bin/bash

echo "Iniciando a limpeza do ambiente..."

# Removendo usuários e seus respectivos diretórios home
userdel -r carlos
userdel -r maria
userdel -r joao
userdel -r debora
userdel -r sebastiana
userdel -r roberto
userdel -r josefina
userdel -r amanda
userdel -r rogerio

# Removendo grupos
groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC

# Removendo diretórios criados na raiz
rm -rf /publico
rm -rf /adm
rm -rf /ven
rm -rf /sec

echo "Ambiente limpo com sucesso!"
