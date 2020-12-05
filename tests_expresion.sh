#!/bin/bash
# Programa para  probar una expresión

echo "Cuanto es 1 + 2"
read "texto"
if [ "$texto" = "3" ]
then
    echo "Correcto"
else
    echo "Incorrecto"
fi
