#!/bin/bash
# 23_readFile.sh
# Programa para ejemplificar como se lee en un archivo

echo "Leer un archivo"

# Leemos el primer argumento, que sera la ruta del archivo o el archivo
echo -e "\nEjecutar un comando cat directmanete"
cat $1

echo -e "\nAlmacenar los valores en una variable"
valorCat="$(cat $1)"
echo "$valorCat"

# Se utiliza la variable IFS (Internal Field Separator) para evitar que los espacion en blancos
# se recorten al inicio o al final se supriman.
echo -e "\nLeer Archivo línea por línea"
while IFS= read linea
do
    echo "$linea"
done < $1
