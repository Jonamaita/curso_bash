#!/bin/bash
# Progama que permite maneja las utilidades de Postgres

opcion=0

# while infinito
while :
do
    #Limpiar la pantalla
    clear
    #Desplegar el menú de opciones
    echo "---------------------------------"
    echo "Programa de utilidad de postagres"
    echo "---------------------------------"
    echo "          Menu Principal         "
    echo "---------------------------------"
    echo "1. Instalar Postgres"
    echo "2. Desintalar Postgres"
    echo "3. Sacar un Respaldo"
    echo "4. Restaurar un respaldo"
    echo "5. Salir"

    # Leer los datos del usuario
    read -n1 -p "Ingrese una opción [1-5]: " opcion

    #Validar la opción ingresada
    case $opcion in
        1)
           echo -e "\nInstalar postgres....."
           sleep 3
           ;;
        2) 
           echo -e "\nDesinstalar postgres.."
           sleep 3
           ;;
        3) 
           echo -e "\nSacar respaldo........"
           sleep 3
           ;;
        4) 
           echo -e "\nRestaurar respaldo...."
           sleep 3
           ;;
        5) 
           echo -e "\nSaliendo..."
           # rompo el ciclo con exit 0 indicandole que no hay error
           exit 0
           ;;
    esac
done
