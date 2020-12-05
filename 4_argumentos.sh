#! /bin/bash
#Programa para ejemplificar el paso de argumentos

# Indicamos que tomará el primer argumento
nombreCurso=$1

# Inidcamos que tomaŕa el segundo argumento
horarioCurso=$2

echo "El nombre del curso es: $nombreCurso dictado en el horario: $horarioCurso"
echo "El numero de parámetrso enviados es: $#"
echo "Los parametros envíados son: $*"
echo "Este Script se llama: $0"
