#! /bin/bash
# 9_options.sg
# Programa par ejemplificar como se realiza el paso de opciones con o sin parametros
# Autor: Jonathan Maita

echo "Programa Opciones"
# Capturamos la opciones
echo "Opción 1 enviada:$1"
echo "Opción 2 enviada:$2"
# Mostramos todas las opciones envíadas
echo "Opciones enviadas: $*"
echo -e "\n"

# Mientras que la opción $1 no sea nulo estamos en el while, recordemos que 
# switf va desplazando los parametros hacia la izquierda y al mismo tiempo eliminando
# por ende, $1 va tomando cada argumento 
while [ -n "$1" ]
do
    # Verificamos en cada iteración el argumento $1
    case "$1" in
	-a) echo "-a Opción valida";;
	-b) echo "-a Opción valida";;
	 *) echo "Opcion $1 invalida";;
    esac
    # En cada iteración desplazamos los parametro a la izquierda son shift
    shift
done

