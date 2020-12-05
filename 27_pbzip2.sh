#!/bin/bash
# 27_pbzip2.sh
# Programa para ejemplificar el empaquetamiento con el comando tar 
# y comprimir el archivo empaquetado con pbzip2

echo "Empaquetar todos los scrpt de la carpeta cursobash"

# Empaquetar -c create, -v verbosity, -f para indicarle los archivos
# Empaquetar todo lo que temrina en .sh
tar -cvf curso_bash.tar *.sh

# Comprimir el empaquetado anterior
# El archivo curso_bash.tar se elimina luego de comprimir
echo "Comprimir el empaquetado curso_bash.tar con pbzip2"
pbzip2 -f curso_bash.tar

# Si queremos empaquetar y comprimir en solo comando
echo "Empaquetar y comprimir en un solo comando"
tar -cf *.sh -c > curso_bash_2.tar.bz2


