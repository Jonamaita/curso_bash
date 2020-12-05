#!/bin/bash
# 22_writeFile.sh
# Programa para ejemplificar como se escribe en un archivo

echo "Escribir en un archivo"

# Todo lo que se escriba en el argumento $2 se escrbira en el archivo que se pase 
# en el argumento $1
echo "Valores escrito con el comando echo"  >> $1

# Adición multilínea
# La palabra EOM es una palabra reservada, sin embargo, podemos usar cualquier palabra para 
# Indicarle el termino fin de linea.
# Escribe la palabra que se envía en el argumento $2 en el archivo que se pasa en el argumento $1
cat <<EOM >>$1
$2
EOM
