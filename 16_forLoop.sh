#/bin/bash
# Programa para ejemplificar el uso de for Loops

arregloNumeros=(1 2 3 4 5 6)

echo "Iterar en la lista de Números"
for num in ${arregloNumeros[*]}
do
    echo "núeros: $num"
done

echo "Iterar en la lista de Cadenas"
for nom in "Marco" "pedro" "Luis" "Daniela"
do
    echo "$nom"
done

echo "Iterar en Archivos"
for fill in *
do
    echo "Nombre archivo: $fill"
done

echo "Iterar utilizando un comando"
for fill in $(ls)
do
    echo "Nombre archivo: $fill"
done

echo "Itrar utilizando el formato tradicional (three expresion)"
for ((i=1; i<10; i++))
do
    echo "Numero:$i"
done
