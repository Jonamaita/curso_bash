#!/bin/bash
# 29_packageSSH.sh
# Programa para ejemplificar la forma de como transferir por la red
# Utilizando el comando rsync,  utilizando utilizando las opciones de empaquetamiento para optimizar
# la velocidad de transferencia.

echo "Empaquetar todos los script de la carpeta cursobash usando zip y transferirlo por la red a otro equipo
utilizando el comando rsync"

host=""
usuario=""
read -p "Ingresar el hot: " host
read -p "Ingresar el usuario: " usuario

echo -e "\nEn este momento se procederá a empaquetar la carpeta y transferirla según los datos ingresados"

rsync -avz $(pwd) $usuario@$host:/home/jonamaita

