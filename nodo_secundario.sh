#!/bin/bash
#Instalacion de herramientas packer, terraform, ansible, git
#Tipo de maquina: centos 7
#Prerequisitos
sudo yum -y update
sudo yum install -y wget
#Se deben generar llaves con git bash
#Las llaves (publica y privada) deben estar almacenadas en la carpeta .ssh del usuario
#ssh-keygen -t rsa -b 4096 -C "your_email@example.com" # "comentario"
#Instalacion packer
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
sudo yum -y install packer
#Instalacion terraform
sudo yum -y install terraform
#Instalacion ansible
sudo yum install ansible
#Para autenticación con git
chmod 600 ~/.ssh/nodosecundario #nodosecundario = nombre llave privada
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/nodosecundario #nodosecundario = nombre llave privada
ssh-keyscan github.com >> $HOME/.ssh/known_hosts
#Instalacion git
sudo yum -y install git



