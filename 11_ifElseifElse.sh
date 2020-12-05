# !/bin/bash
# Programa para ejemplificar el uso de la sentencia de decision if, elseif, else

notaClase=0
edad=0

echo "Ejemplo Sentencia If-Else"
echo -e "\n"
read -p "Indique cual es su edad:" edad

if [ $edad -le 18 ]
then
   echo "La persona es adolecente"
elif [ $edad -ge 19 ] && [ $edad -le 64 ]
then
    echo "La persona es adulta"
else
    echo "No persona es adulto mayor"
fi
