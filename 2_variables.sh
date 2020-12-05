#!/bin/bash
# Programa para revisar la declración de variables

opcion=5
nombre=Marco

echo "Opción: $opcion y Nombre: $nombre"

# Exportar la variale nombre para que es disponible a los demas procesos
export nombre

# Llamara al siguiente script para recuperar la variable
./2_variables_2.sh
