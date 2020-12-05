#!/bin/bash
# 31_installUnistallPostgres.sh
# Progama que permite manejar las utilidades de Postgres

opcion=0

# Función para instalr postgres
instalar_postgres(){
    echo -e "\n Verificar instalación postgres ...."
    verifyInstall=$(which psql)
    if [ $? -eq 0 ]
    then
        echo -e "\n Postgres ya se encuentra instalado"
    else
        read -s -p "Ingresa contraseña de sudo:" password
        read -s -p "Ingrese contraseña a utilizar en postgress:" passwordPostgres
        # Flag -S Le indicamos que sudo leera la contraseña de entrada estándar
        echo "$password" | sudo -S aptitude update
        echo "$password" | sudo -S aptitude install -y postgresql postgresql-contrib
        sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD '{$paswordPostgres}';"
        echo "$password" | sudo -S systemctl enable postgresql.service
        echo "$password" | sudo -S systemctl start postgresql.service
    fi
    read -n 1 -s -r -p "Presione [ENTER] para continuar...."
}

# Función para desintalar postgres
desintalar_postgres(){
    echo -s -p "Desintalar postgres:" password
    echo -e "\n"
    echo "$password" | sudo -S systemctl stop postgresql.service
    echo "$password" | sudo -S aptitude -y purge remove postgresql\*
    echo "$password" | sudo -S rm -r /etc/postgresql
    echo "$password" | sudo -S rm -r /etc/postgresql-common
    echo "$password" | sudo -S rm -r /var/lib/postgresql
    echo "$password" | sudo -S userdel -r postgres
    echo "$password" | sudo -S groupdel postgresql
    read -n 1 -s -r -p "Presione [ENTER] para continuar...."
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
