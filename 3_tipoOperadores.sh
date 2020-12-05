#! /bin/bash
# Programa para revisar los tipos de operadores
# Autor: Jonathan Maita

numA=10
numB=4

echo "Operadores Aritmeticos"
echo "Números: A=$numA y B=$numB"
echo "Sumar A + B =" $((numA + numB))
echo "Restar A - B =" $((numA - numB))
echo "Multiplicar A * B =" $((numA * numB))
echo "Dividir A / B =" $((numA / numB))
echo "Residuo A % B =" $((numA % numB))

# Con -e soporta caracteres especiales, para manejar los saltos de lineas
echo -e "\nOperadores Relacionales"
echo "Nuemeros: A=$numA y B=$numB" $((numA + numB))
echo "A > B =" $((numA > numB))
echo "A < B =" $((numA < numB))
echo "A >= B =" $((numA >= numB))
echo "A <= B =" $((numA <= numB))
echo "A == B =" $((numA == numB))
echo "A != B =" $((numA != numB))


echo -e "\nOperadores de Accionación"
echo "Nuemeros: A=$numA y B=$numB" $((numA + numB))
echo "Sumar A +=B" $((numA += numB))
echo "Sumar A *=B" $((numA -= numB))
echo "Sumar A *=B" $((numA *= numB))
echo "Sumar A /=B" $((numA /= numB))
echo "Sumar A %=B" $((numA %= numB))
