#!/bin/bash
#21_crearArchivosDirectorios.sh
#Programa par ejemplificar la creación de archivos y directorios

echo "Archivos - Directorios"

if [ $1 = "-d" ]
then
    # Argumento -m para esteblecer permisos
    mkdir -m 755 $2
    echo "Direcotrio creado correctamente"
    ls -la $2
elif [ $1 = "-f" ]
then
    touch $2
    echo "Archivo creado correctamente"
    ls -l $2
else
    echo "No existe esa opción: $1"
fi
