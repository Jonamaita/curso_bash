#!/bin/bash
# 24_fileOperations.sh
# Programa para ejemplificar las operaciones de una rchivo

echo "Operaciones de un archivo"
mkdir -m  755 backupScripts

echo -e "\nCopiar los scripts del directorio actual al nuevo directorio backupScripts"
cp *.* backupScripts/
ls -la backupScripts

echo -e "\nMover el directoio backupScripts a otra ubicación: $HOME"
mv backupScripts $HOME

echo -e "\nEliminar los archivos .txt"
rm *.txt

