#!/bin/bash
# 28_zipPassword.sh
# Programa para ejemplificar el la compresión de archivos con zip y 
# ademas encriptarla o protegerla con una clave

echo "Empaquetar todos los script de la carpeta cursobash usando zip"
# Con -e le indicamos que queremos encriptar y nos pedíra ingresar una password
zip -e curso_bash.zip *.sh


