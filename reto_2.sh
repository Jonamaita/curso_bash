#! /bin/bash
# Reto dos del curso bash
# Pedir información, nombre, apellidos, edad, dirección y números de tlf.
# finalmente validarla con expresiones regulares

rutRegex="^([0-9]{6,8})-([0-9k])$"
nameRegex="^[a-zA-Z]{0,10}$"
ageRegex="^[0-9]{0,3}$"
tlfRegex="^[0-9]{8}$"
echo "Información personal" 
echo -e "\n"
read -p "Ingrese su rut, sin puntos y con guión: " rut
read -p "Ingrese su nombre: " name
read -p "Ingrese la edad: " age
read -p "Ingrese su dirección: " address
read -p "Ingrese su número de tlf: " tlf
if [[ $rut =~ $rutRegex ]]
then
    echo "El rut: $rut es correcto"
else
    echo "El rut: $rut es incorrecto"
fi

if [[ $name =~ $nameRegex ]]
then
    echo "El nombre: $name es valido"
else
    echo "El nombre solo debe contener 10 caracteres"
fi

if [[ $age =~ $ageRegex ]]
then
    echo "La edad: $edad es correcta"
else
    echo "La edad ingresada es in correcta"
fi

if [[ $tlf =~ $tlfRegex ]]
then
    echo "El tlf: $tlf es correcto"
else
    echo "El tlf: $tlf es incorrecto"
fi
