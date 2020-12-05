#!/bin/bash
# Reto 3 del curso bash

option=0

read -p "Ingrese su nombre: " nombre
echo "$nombre bienvenido a BiteStore, que desear hacer?"
echo -e "\b"
echo "1) Cambiar su articulo ?"
echo "2) Devolución de su dinero?"
echo "3) Comprar otro articulo?"

read -n1 -p "Ingrese una opción del 1 al 3: " option
echo -e "\n"
case $option in
    1) read -n1 -p "Estimado $nombre Trajo su Ticket de cambio [S/N]?: "  ticket
    if [ $ticket = "S" ] || [ $ticket = "s" ]
    then
        echo -e "\nLa haremos el cambio por un articulo"
    else
        echo -e "\nNo podemos hacer el cambio sin su ticket de cambio"
    fi;;
    2) read -n1 -p "Estimado $nombre Trajo su comprobante [S/N]?: " comprobante
    if [  $comprobante = "S" ] || [ $comprobante = "s" ]
    then
        echo "Que método de pago uso?"
	echo "1) Credito"
	echo "2) Debito o Efectivo"
	read -n1 -p "Ingrese una opción: " method
        echo -e "\n"
	case $method in
            1) echo "Le regresaremos el dinéro en 5 dias a su tarjeta de credito";;
            2) echo "Le daremos el efectivo en este instante";;
	esac
    else
        echo -e "\nNo podemos hacerle la devolución Señor $nombre"
    fi;;
    3) echo -e "\nEstimado $nombre Elija un articulo para comprar"
esac

