#!/bin/bash
# 26_gzip.sh
# Programa para ejemplificar el empaquetamiento con el comando tar 
# y comprimir el archivo empaquetado con gzip

echo "Empaquetar todos los scrpt de la carpeta cursobash"

# Empaquetar -c create, -v verbosity, -f para indicarle los archivos
# Empaquetar todo lo que temrina en .sh
tar -cvf curso_bash.tar *.sh

# Comprimir el empaquetado anterior
# El archivo curso_bash.tar se elimina luego de comprimir
echo "Comprimir curso_bash.tar con un ratio de 9"
gzip -9 curso_bash.tar


