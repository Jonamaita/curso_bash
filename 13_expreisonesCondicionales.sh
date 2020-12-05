#!/bin/bash
# Programa para ejemplificar las expresiones condicionales.

edad=0
pais=""
pathArchivo=""

read -p "Ingrese su edad: " edad
read -p "Ingrese su pais: " pais
read -p "Ingrese el path de su archivo: " pathArchivo

echo -e  "\nExpresiones condicionales con números"
if [ $edad -lt 10 ]
then
    echo "La persona es un nu niño o niña"
elif [ $edad -ge 10 ] && [ $edad -le 17 ]
then
    echo "La persona se trata de un adocelente"
else
    echo "La persona es mayor de edad"
fi

echo -e "\nExpresiones condicionales con cadenas"
if [ $pais = "EEU" ]
then
   echo "La persona es americana"
elif [ $pais = "Ecuador" ] || [ $pais = "Colombia" ]
then
    echo "La persona es de sur América"
else
    echo "Se desconoce la nacionalidad"
fi

echo -e "\nExpresiones con  archivos"
# Con -d verificamos si existe o no un directorio
if [ -d $pathArchivo ]
then
    echo "El directorio $pathArchivo existe"
else
    echo "El directorio $pathArchivo no existe"
fi

