#/bin/bash
# Programa para ejemplificar el uso de arreglos

arregloNumeros=(1 2 3 4 5 6)
arregloCadenas=(Marco, Antonio, Pedro, Susana)
#Arreglo de rangos de valores
arregloRangos=({A..Z} {10..20})

#Imprimir todos los valores
echo "Arreglo de Números: ${arregloNumeros[*]}"
echo "Arreglo de Números: ${arregloCadenas[*]}"
echo "Arreglo de Números: ${arregloRangos[*]}"

#Imprimir el tamaño de los arreglos.
echo "Arreglo de Números: ${#arregloNumeros[*]}"
echo "Arreglo de Números: ${#arregloCadenas[*]}"
echo "Arreglo de Números: ${#arregloRangos[*]}"

#Imprimir la posición 3 de los arreglos
echo "Posición 3 del Arreglo Números: ${arregloNumeros[3]}"
echo "Posición 3 Arreglo de Cadenas : ${arregloCadenas[3]}"
echo "Posición 3 Arreglo de Rangos: ${arregloRangos[3]}"

#Añadir y eleiminar valores de un arreglo
arregloNumeros[7]=20
#Eliminar la posición 0 del arreglo números
unset arregloNumeros[0]
echo "Arreglo de números: ${arregloNumeros[*]}"
echo "Tamaño arreglo numeros: ${#arregloNumeros[*]}"
