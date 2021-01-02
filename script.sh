#!/bin/bash
dir = /var/www/laravel

echo "Upserver"
read -p "Deseja atualizar pacotes do sistema? (Enter para confirmar ou Ctrl + C para sair): "
echo "Atualizando pacotes..."
echo "Digite a senha de root:"
sudo apt update -y
sudo apt upgrade -y
echo "Pacotes atualizados"
read -p "Deseja atualizar a aplicação laravel? (Enter para confirmar ou Ctrl + C para sair): "
read -p "Qual o diretorio da aplicação?" dir
cd $dir
composer update
composer config:cache
composer route:cache
composer migrate
composer dump-autoload
echo "Aplicação laravel atualizada com sucesso."
