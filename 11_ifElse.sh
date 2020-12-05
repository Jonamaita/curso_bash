# !/bin/bash
# Programa para ejemplificar el uso de la sentencia de decision if, else

notaClase=0
edad=0

echo "Ejemplo Sentencia If-Else"
read -n1 -p "Indique cual es su nota (1-9)" notaClase
echo -e "\n"

if (( $notaClase >= 7 ));then
    echo "El alumno aprueba la materia"
else
    echo "El alumno no aprueba la materia"
fi

read -p "Indique cual es su edad:" edad
if [ $edad -le 18 ]
then
   echo "Puede pasar"
else
    echo "No puede pasar"
fi
