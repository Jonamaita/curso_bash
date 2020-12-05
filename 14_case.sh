# !/bin/bash
# Programa para ejemplificar el uso de case

opcion=""
notaClase=0


echo "Ejemplo Sentencia Case"
read -p "Ingrese una opción de la A - Z: " opcion
echo -e "\n"

case $opcion in
    "A") echo "Operacion Guardar Archivo";;
    "B") echo "Operación Eliminar Archivo";;
    [C-E]) echo "No esta implementada la operación";;
    *) echo "Opcion Incorrecta"
esac
