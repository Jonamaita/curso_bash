#!/bin/bash
# reto_6.sh
# Hacer un scritp archivos utilizando algún formato de compresión, colocarle una clave y pasarlo a otra máquina a través de SSH.

host=""
usuario""
echo -e "\nBackup Information"
# Comprimir un archivo con zip con clave
zip -e curso_bash.zip *.sh

echo -e "Transferir por red"
read -p "Ingrese el host: " host
read -p "Ingrese el usuario: " usuario
rsync -avz curso_bash.zip $user@$host:/home/jonamaita
