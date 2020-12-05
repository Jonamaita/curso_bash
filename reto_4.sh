#!/bin/bash
#reto_4.sh
# Realizar un menú con las siguientes opciones. Procesos actuales, Memoria Disponible
# Espacio en Disco, Información de Red, Variables de Entorno configuradas, Información Programa
# Backup Información.

opcion=0

while :
do
    clear
    echo  "Ingrese una de las siguientes opciones"
    echo -e "\n1. Procesos Actuales"
    echo "2. Memoeria Disponible"
    echo "3. Espacio en Disco"
    echo "4. Información de Red"
    echo "5. Variables de Entorno Configurada"
    echo "6. Información Programa"
    echo "7. backup Información"
    echo "8. Salir"

    read -n1 -p "Ingrese una Opción [1-8]: " opcion

    case $opcion in
        1)
          echo -e "\nProcesos Actuales"
          ps -A
          sleep 3;;

        2)
          echo -e "\nMemoria Disponible"
          free --giga
          sleep 3;;
        3)
          echo -e "\nEspacio en disco"
          df -h
          sleep 3;;
        4)
          echo -e "\nInformación de red"
          netstat -nt
          sleep 3;;
        5)
          echo -e "\nVariables de entorno"
          \env
         sleep 3;;
        6)
          echo -e "\nInformación programa"
          sleep 3;;

        7)
          echo -e "\nInformación del backup"
          sleep 3;;
        8)
          echo -e "\nAdios...!"
          sleep 3
          exit 1;;
    esac
done
