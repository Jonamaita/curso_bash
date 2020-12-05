#! /bin/bash
# 6_readEcho.sh
# Programa para ejemplificar como capturar la información del usuario utilizando
# el comando echo, read y la variable $REPLY.
# Autor: Jonathan Maita

option=0
backupName=""

echo "Programa Utilidades Postgres"

# -n genera una nuea linea o puede ingresar la opcion en la misma linea
echo -n  "Ingresa una opción: "
read
option=$REPLY
echo -n "Ingresa el nombre del archivo del backup: "
read
backupName=$REPLY
echo "La opciones: $option, backupName:$backupName"
