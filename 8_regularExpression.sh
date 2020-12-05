#! /bin/bash
# Programa par ejemplificar como capturar información del usuario y validarla
# utilizando expresiones regulares
# Autor: Jonathan Maita

# La expresion regular empieza con ^ y terminar con $
identificacionRegex='^[0-9]{10}$'
paisRegex='^EC|COL|US$'
# Fecha de Nacimiento en el formato yyyyMMDD. Ejemplo: 20181222
#                         año                  mes                dias
fechaNacimientoRegex='^(19|20)([0-8]{2})(0[1-9]|1[0-2])(0[1-9]|1[0-9]|2[0-9]|3[0-1])$'

echo "Expresiones regulares"
read -p "Introduzca su identificación: " identificacion
read -p "Ingrese la iniciales de un pais [EC, COL, US]: " pais
read -p "Ingresa la fecha de naciomiento [yyyyMMDD]: " fechaNacimiento

#Validación Identificacón
if [[ $identificacion =~ $identificacionRegex ]]
then
	echo "Identificacion $identificacion válida"
else
	echo "Identificacion $identificacion inválida"
fi

#Validación pais
if [[ $pais =~ $paisRegex ]]
then 
	echo "Pais $pais válido"
else
	echo "Pais $pais inválido"
fi

#Validación fecha de nacimiento
if [[ $fechaNacimiento =~ $fechaNacimientoRegex ]]
then
	echo "Fecha: $fechaNacimiento de nacimiento válida"
else
	echo "Fecha: $fechaNacimiento de nacimiendo inválida"
fi
