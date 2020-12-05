# !/bin/bash
# Programa para ejemplificar el uso de los if anidados

notaClase=0


echo "Ejemplo Sentencia If-Else"
read -n1 -p "Indique cual es su nota (1-9)" notaClase
echo -e "\n"

if [ $notaClase -ge 7 ]
then
    echo "El alumno aprueba la materia"
    read -p "si va a continuar estudiando en el siguiente nivel (s/n)" continua
    if [ $continua = "s" ]
    then
        echo "Bienvenido al siguiente nivel"
    else
        echo "Gracias por trabajar con nosotros, mucha suerte"
    fi
else
    echo "El alumno no aprueba la materia"
fi
