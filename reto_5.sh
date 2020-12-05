#!/bin/bash
# reto_5.sh
# Escribir información del usuario en un archivo y la fecha

archivo="log.log"
user=`logname`
date=`date +"%Y-%m-%d"`
hour=`date +"%H-%M-%S"`

# Crea el archio si no existe
if [ ! -f ${archivo} ]
then
    echo "Creando ${archivo}"
    touch ${archivo}
fi

echo "El usuario: ${user} ha ejecutado el script el día ${date} a las ${hour}" >>${archivo}

