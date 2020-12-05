#! /bin/bash
# Programa para revisar como ejecutar comandos dentro un programa
# y alamacenarlos en una variable para su posterior utilización
# Autor: Jonathan Maita

# Usando backtick
ubicacionActual=`pwd`

#Usando $(comando)
infoKernel=$(uname -a)

echo "Estoy en la ubicación: $ubicacionActual"
echo "La información del kernel: $infoKernel"
