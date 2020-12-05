#!/bin/bash
# Progama que permite maneja las utilidades de Postgres

opcion=0

# Función para instalr postgres
instalar_postgres(){
    echo "Instalar postgres"
}

# Función para desintalar postgres
desintalar_postgres(){
    echo "Desintalar postgres"
}

# Función para sacar un respaldo
sacar_respaldo(){
    echo "Sacar respaldo...."
    # Imprime el parametro 1 que se le pasa a la función
    echo "Directorio de backup: " $1
}

# Función para
restaurar_respaldo(){
    echo "Restaurar respaldo...."
    echo "Directorio para restaurar respaldo: " $1
}

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
           instalar_postgres
           sleep 3
           ;;
        2)
           desintalar_postgres
           sleep 3
           ;;
        3)
           read -p "Directorio Backup: " directorioBackup
           # Llama la función y le pasa el parametro directorioBackup
           sacar_respaldo $directorioBackup
           sleep 3
           ;;
        4)
           read -p "Directorio para restaura repaldo: " directorioRespaldos
           restaurar_respaldo $directorioRespaldos
           sleep 3
           ;;
        5)
           echo -e "\nSaliendo..."
           # rompo el ciclo con exit 0 indicandole que no hay error
           exit 0
           ;;
    esac
done
