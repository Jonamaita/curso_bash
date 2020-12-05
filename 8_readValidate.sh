#! /bin/bash
# 8_readValidate.sh
# Programa par ejemplificar como capturar información del usuario y validarla
# utilizando read
# Autor: Jonathan Maita

option=0
backupName=""
clave=""

echo "Programa utilidades Postgres"
# Acepta el ingreso de información de un solo caracter
read -n1 -p "Ingresar una opción:" option
# Salto de linea
echo -e "\n" 
read -n10 -p "Ingresar el nombre del archivo del backup:" backup
echo -e "\n"
echo "Opción:$option , Nombre del Backup: $backupName"
# Ingresar datos de manera silenciosa o oculta.
read -s -p "Clave:" clave
echo "La clave es: $clave"
