#!/bin/bash
# 25_tar.sh
# Programa para ejemplificar el empaquetamiento con el comando tar

echo "Empaquetar todos los scrpt de la carpeta cursobash"

# Empaquetar -c create, -v verbosity, -f para indicarle los archivos
# Empaquetar todo lo que temrina en .sh
tar -cvf curso_bash.tar *.sh
