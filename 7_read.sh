#! /bin/bash
# 7_read.sh
# Programa para ejemplificar como capturar la información del usuario utilizando
# el comando read.
# Autor: Jonathan Maita

option=0
backupName=""

echo "Programa Utilidades Postgres"

read -p "Ingresa una opción: " option
read -p "Ingresa el nombre del archivo del backup: " backupName

echo "La opciones: $option, backupName:$backupName"
