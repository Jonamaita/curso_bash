11_ifElseifElse.sh                                                                                  0000764 0001750 0001750 00000000603 13753334212 014747  0                                                                                                    ustar   jonamaita                       jonamaita                                                                                                                                                                                                              # !/bin/bash
# Programa para ejemplificar el uso de la sentencia de decision if, elseif, else

notaClase=0
edad=0

echo "Ejemplo Sentencia If-Else"
echo -e "\n"
read -p "Indique cual es su edad:" edad

if [ $edad -le 18 ]
then
   echo "La persona es adolecente"
elif [ $edad -ge 19 ] && [ $edad -le 64 ]
then
    echo "La persona es adulta"
else
    echo "No persona es adulto mayor"
fi
                                                                                                                             11_ifElse.sh                                                                                        0000764 0001750 0001750 00000000703 13753332405 013622  0                                                                                                    ustar   jonamaita                       jonamaita                                                                                                                                                                                                              # !/bin/bash
# Programa para ejemplificar el uso de la sentencia de decision if, else

notaClase=0
edad=0

echo "Ejemplo Sentencia If-Else"
read -n1 -p "Indique cual es su nota (1-9)" notaClase
echo -e "\n"

if (( $notaClase >= 7 ));then
    echo "El alumno aprueba la materia"
else
    echo "El alumno no aprueba la materia"
fi

read -p "Indique cual es su edad:" edad
if [ $edad -le 18 ]
then
   echo "Puede pasar"
else
    echo "No puede pasar"
fi
                                                             12_ifAnidados.sh                                                                                    0000764 0001750 0001750 00000001040 13753372666 014465  0                                                                                                    ustar   jonamaita                       jonamaita                                                                                                                                                                                                              # !/bin/bash
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
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                13_expreisonesCondicionales.sh                                                                      0000764 0001750 0001750 00000001706 13754254041 017460  0                                                                                                    ustar   jonamaita                       jonamaita                                                                                                                                                                                                              #!/bin/bash
# Programa para ejemplificar las expresiones condicionales.

edad=0
pais=""
pathArchivo=""

read -p "Ingrese su edad: " edad
read -p "Ingrese su pais: " pais
read -p "Ingrese el path de su archivo: " pathArchivo

echo -e  "\nExpresiones condicionales con números"
if [ $edad -lt 10 ]
then
    echo "La persona es un nu niño o niña"
elif [ $edad -ge 10 ] && [ $edad -le 17 ]
then
    echo "La persona se trata de un adocelente"
else
    echo "La persona es mayor de edad"
fi

echo -e "\nExpresiones condicionales con cadenas"
if [ $pais = "EEU" ]
then
   echo "La persona es americana"
elif [ $pais = "Ecuador" ] || [ $pais = "Colombia" ]
then
    echo "La persona es de sur América"
else
    echo "Se desconoce la nacionalidad"
fi

echo -e "\nExpresiones con  archivos"
# Con -d verificamos si existe o no un directorio
if [ -d $pathArchivo ]
then
    echo "El directorio $pathArchivo existe"
else
    echo "El directorio $pathArchivo no existe"
fi

                                                          14_case.sh                                                                                          0000764 0001750 0001750 00000000567 13754264460 013347  0                                                                                                    ustar   jonamaita                       jonamaita                                                                                                                                                                                                              # !/bin/bash
# Programa para ejemplificar el uso de case

opcion=""
notaClase=0


echo "Ejemplo Sentencia Case"
read -p "Ingrese una opción de la A - Z: " opcion
echo -e "\n"

case $opcion in
    "A") echo "Operacion Guardar Archivo";;
    "B") echo "Operación Eliminar Archivo";;
    [C-E]) echo "No esta implementada la operación";;
    *) echo "Opcion Incorrecta"
esac
                                                                                                                                         15_arreglos.sh                                                                                      0000764 0001750 0001750 00000001776 13754333603 014252  0                                                                                                    ustar   jonamaita                       jonamaita                                                                                                                                                                                                              #/bin/bash
# Programa para ejemplificar el uso de arreglos

arregloNumeros=(1 2 3 4 5 6)
arregloCadenas=(Marco, Antonio, Pedro, Susana)
#Arreglo de rangos de valores
arregloRangos=({A..Z} {10..20})

#Imprimir todos los valores
echo "Arreglo de Números: ${arregloNumeros[*]}"
echo "Arreglo de Números: ${arregloCadenas[*]}"
echo "Arreglo de Números: ${arregloRangos[*]}"

#Imprimir el tamaño de los arreglos.
echo "Arreglo de Números: ${#arregloNumeros[*]}"
echo "Arreglo de Números: ${#arregloCadenas[*]}"
echo "Arreglo de Números: ${#arregloRangos[*]}"

#Imprimir la posición 3 de los arreglos
echo "Posición 3 del Arreglo Números: ${arregloNumeros[3]}"
echo "Posición 3 Arreglo de Cadenas : ${arregloCadenas[3]}"
echo "Posición 3 Arreglo de Rangos: ${arregloRangos[3]}"

#Añadir y eleiminar valores de un arreglo
arregloNumeros[7]=20
#Eliminar la posición 0 del arreglo números
unset arregloNumeros[0]
echo "Arreglo de números: ${arregloNumeros[*]}"
echo "Tamaño arreglo numeros: ${#arregloNumeros[*]}"
  16_forLoop.sh                                                                                       0000764 0001750 0001750 00000001124 13754344626 014047  0                                                                                                    ustar   jonamaita                       jonamaita                                                                                                                                                                                                              #/bin/bash
# Programa para ejemplificar el uso de for Loops

arregloNumeros=(1 2 3 4 5 6)

echo "Iterar en la lista de Números"
for num in ${arregloNumeros[*]}
do
    echo "núeros: $num"
done

echo "Iterar en la lista de Cadenas"
for nom in "Marco" "pedro" "Luis" "Daniela"
do
    echo "$nom"
done

echo "Iterar en Archivos"
for fill in *
do
    echo "Nombre archivo: $fill"
done

echo "Iterar utilizando un comando"
for fill in $(ls)
do
    echo "Nombre archivo: $fill"
done

echo "Itrar utilizando el formato tradicional (three expresion)"
for ((i=1; i<10; i++))
do
    echo "Numero:$i"
done
                                                                                                                                                                                                                                                                                                                                                                                                                                            17_whileLoop.sh                                                                                     0000764 0001750 0001750 00000000252 13754344172 014367  0                                                                                                    ustar   jonamaita                       jonamaita                                                                                                                                                                                                              #!/bin/bash
# Programa para ejemplifica la sentencia While Loop

numero=1

while [ $numero -ne 10 ]
do
    echo "Imprimiendo $numero veces"
    numero=$((numero+1))
done
                                                                                                                                                                                                                                                                                                                                                      18_loopsAnidados.sh                                                                                 0000764 0001750 0001750 00000000320 13754347202 015216  0                                                                                                    ustar   jonamaita                       jonamaita                                                                                                                                                                                                              #/bin/bash
# Programa para ejemplificar el uso de los Loops anidados

echo "Loops Anidados"
for fil in $(ls)
do
    for nombre in {1..4}
    do
        echo "Nombre del archivo: ${fil}_$nombre"
    done
done
                                                                                                                                                                                                                                                                                                                19_breakContinue.sh                                                                                 0000764 0001750 0001750 00000000777 13754636442 015240  0                                                                                                    ustar   jonamaita                       jonamaita                                                                                                                                                                                                              #/bin/bash
# Programa para ejemplificar el uso de break y continue

echo "Sentencias break y continue"
for fil in $(ls)
do
    for nombre in {1..4}
    do
        # Romper el cilo con los archivo que empicen con 10_
        if [ $fil = "10_"* ]
        then
            break;
       # Seguir a la siguiente iteración con los archivo que empiecen con 4
        elif [[ $fil == 4* ]]
        then
            continue;
        else
            echo "Nombre del archivo: ${fil}_$nombre"
        fi
    done
done
 1_utilityPostgres.sh                                                                                0000764 0001750 0001750 00000000211 13745430117 015556  0                                                                                                    ustar   jonamaita                       jonamaita                                                                                                                                                                                                              # !/bin/bash
# Programa para realizar algunas operaciones utilitarias de Postgres

echo "Hola bienvenido al curso de programación bash"
                                                                                                                                                                                                                                                                                                                                                                                       20_menuOpciones.sh                                                                                  0000764 0001750 0001750 00000002307 13755371006 015063  0                                                                                                    ustar   jonamaita                       jonamaita                                                                                                                                                                                                              #!/bin/bash
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
                                                                                                                                                                                                                                                                                                                         21_crearArchivosDirectorios.sh                                                                      0000764 0001750 0001750 00000000644 13756617337 017437  0                                                                                                    ustar   jonamaita                       jonamaita                                                                                                                                                                                                              #!/bin/bash
#21_crearArchivosDirectorios.sh
#Programa par ejemplificar la creación de archivos y directorios

echo "Archivos - Directorios"

if [ $1 = "-d" ]
then
    # Argumento -m para esteblecer permisos
    mkdir -m 755 $2
    echo "Direcotrio creado correctamente"
    ls -la $2
elif [ $1 = "-f" ]
then
    touch $2
    echo "Archivo creado correctamente"
    ls -l $2
else
    echo "No existe esa opción: $1"
fi
                                                                                            22_writeFile.sh                                                                                     0000764 0001750 0001750 00000001046 13760343511 014346  0                                                                                                    ustar   jonamaita                       jonamaita                                                                                                                                                                                                              #!/bin/bash
# 22_writeFile.sh
# Programa para ejemplificar como se escribe en un archivo

echo "Escribir en un archivo"

# Todo lo que se escriba en el argumento $2 se escrbira en el archivo que se pase 
# en el argumento $1
echo "Valores escrito con el comando echo"  >> $1

# Adición multilínea
# La palabra EOM es una palabra reservada, sin embargo, podemos usar cualquier palabra para 
# Indicarle el termino fin de linea.
# Escribe la palabra que se envía en el argumento $2 en el archivo que se pasa en el argumento $1
cat <<EOM >>$1
$2
EOM
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          23_readFile.sh                                                                                      0000764 0001750 0001750 00000001067 13761054621 014135  0                                                                                                    ustar   jonamaita                       jonamaita                                                                                                                                                                                                              #!/bin/bash
# 23_readFile.sh
# Programa para ejemplificar como se lee en un archivo

echo "Leer un archivo"

# Leemos el primer argumento, que sera la ruta del archivo o el archivo
echo -e "\nEjecutar un comando cat directmanete"
cat $1

echo -e "\nAlmacenar los valores en una variable"
valorCat="$(cat $1)"
echo "$valorCat"

# Se utiliza la variable IFS (Internal Field Separator) para evitar que los espacion en blancos
# se recorten al inicio o al final se supriman.
echo -e "\nLeer Archivo línea por línea"
while IFS= read linea
do
    echo "$linea"
done < $1
                                                                                                                                                                                                                                                                                                                                                                                                                                                                         24_fileOperations.sh                                                                                0000764 0001750 0001750 00000000657 13761064142 015411  0                                                                                                    ustar   jonamaita                       jonamaita                                                                                                                                                                                                              #!/bin/bash
# 24_fileOperations.sh
# Programa para ejemplificar las operaciones de una rchivo

echo "Operaciones de un archivo"
mkdir -m  755 backupScripts

echo -e "\nCopiar los scripts del directorio actual al nuevo directorio backupScripts"
cp *.* backupScripts/
ls -la backupScripts

echo -e "\nMover el directoio backupScripts a otra ubicación: $HOME"
mv backupScripts $HOME

echo -e "\nEliminar los archivos .txt"
rm *.txt

                                                                                 25_tar.sh                                                                                           0000764 0001750 0001750 00000000441 13761616602 013210  0                                                                                                    ustar   jonamaita                       jonamaita                                                                                                                                                                                                              #!/bin/bash
# 25_tar.sh
# Programa para ejemplificar el empaquetamiento con el comando tar

echo "Empaquetar todos los scrpt de la carpeta cursobash"

# Empaquetar -c create, -v verbosity, -f para indicarle los archivos
# Empaquetar todo lo que temrina en .sh
tar -cvf curso_bash.tar *.sh
                                                                                                                                                                                                                               26_gzip.sh                                                                                          0000764 0001750 0001750 00000000773 13762062307 013402  0                                                                                                    ustar   jonamaita                       jonamaita                                                                                                                                                                                                              #!/bin/bash
# 26_gzip.sh
# Programa para ejemplificar el empaquetamiento con el comando tar 
# y comprimir el archivo empaquetado con gzip

echo "Empaquetar todos los scrpt de la carpeta cursobash"

# Empaquetar -c create, -v verbosity, -f para indicarle los archivos
# Empaquetar todo lo que temrina en .sh
tar -cvf curso_bash.tar *.sh

# Comprimir el empaquetado anterior
# El archivo curso_bash.tar se elimina luego de comprimir
echo "Comprimir curso_bash.tar con un ratio de 9"
gzip -9 curso_bash.tar


     27_pbzip2.sh                                                                                        0000764 0001750 0001750 00000001227 13762065326 013637  0                                                                                                    ustar   jonamaita                       jonamaita                                                                                                                                                                                                              #!/bin/bash
# 27_pbzip2.sh
# Programa para ejemplificar el empaquetamiento con el comando tar 
# y comprimir el archivo empaquetado con pbzip2

echo "Empaquetar todos los scrpt de la carpeta cursobash"

# Empaquetar -c create, -v verbosity, -f para indicarle los archivos
# Empaquetar todo lo que temrina en .sh
tar -cvf curso_bash.tar *.sh

# Comprimir el empaquetado anterior
# El archivo curso_bash.tar se elimina luego de comprimir
echo "Comprimir el empaquetado curso_bash.tar con pbzip2"
pbzip2 -f curso_bash.tar

# Si queremos empaquetar y comprimir en solo comando
echo "Empaquetar y comprimir en un solo comando"
tar -cf *.sh -c > curso_bash_2.tar.bz2


                                                                                                                                                                                                                                                                                                                                                                         2_variables_2.sh                                                                                    0000764 0001750 0001750 00000000217 13746666733 014544  0                                                                                                    ustar   jonamaita                       jonamaita                                                                                                                                                                                                              #!/bin/bash
# Programa para revisar la declración de variables

echo "La variable nombre es llamada desde el escript 2_variables.sh: $nombre"
                                                                                                                                                                                                                                                                                                                                                                                 2_variables.sh                                                                                      0000764 0001750 0001750 00000000447 13746666551 014326  0                                                                                                    ustar   jonamaita                       jonamaita                                                                                                                                                                                                              #!/bin/bash
# Programa para revisar la declración de variables

opcion=5
nombre=Marco

echo "Opción: $opcion y Nombre: $nombre"

# Exportar la variale nombre para que es disponible a los demas procesos
export nombre

# Llamara al siguiente script para recuperar la variable
./2_variables_2.sh
                                                                                                                                                                                                                         3_tipoOperadores.sh                                                                                 0000764 0001750 0001750 00000001761 13747304762 015350  0                                                                                                    ustar   jonamaita                       jonamaita                                                                                                                                                                                                              #! /bin/bash
# Programa para revisar los tipos de operadores
# Autor: Jonathan Maita

numA=10
numB=4

echo "Operadores Aritmeticos"
echo "Números: A=$numA y B=$numB"
echo "Sumar A + B =" $((numA + numB))
echo "Restar A - B =" $((numA - numB))
echo "Multiplicar A * B =" $((numA * numB))
echo "Dividir A / B =" $((numA / numB))
echo "Residuo A % B =" $((numA % numB))

# Con -e soporta caracteres especiales, para manejar los saltos de lineas
echo -e "\nOperadores Relacionales"
echo "Nuemeros: A=$numA y B=$numB" $((numA + numB))
echo "A > B =" $((numA > numB))
echo "A < B =" $((numA < numB))
echo "A >= B =" $((numA >= numB))
echo "A <= B =" $((numA <= numB))
echo "A == B =" $((numA == numB))
echo "A != B =" $((numA != numB))


echo -e "\nOperadores de Accionación"
echo "Nuemeros: A=$numA y B=$numB" $((numA + numB))
echo "Sumar A +=B" $((numA += numB))
echo "Sumar A *=B" $((numA -= numB))
echo "Sumar A *=B" $((numA *= numB))
echo "Sumar A /=B" $((numA /= numB))
echo "Sumar A %=B" $((numA %= numB))
               4_argumentos.sh                                                                                     0000764 0001750 0001750 00000000603 13750137667 014532  0                                                                                                    ustar   jonamaita                       jonamaita                                                                                                                                                                                                              #! /bin/bash
#Programa para ejemplificar el paso de argumentos

# Indicamos que tomará el primer argumento
nombreCurso=$1

# Inidcamos que tomaŕa el segundo argumento
horarioCurso=$2

echo "El nombre del curso es: $nombreCurso dictado en el horario: $horarioCurso"
echo "El numero de parámetrso enviados es: $#"
echo "Los parametros envíados son: $*"
echo "Este Script se llama: $0"
                                                                                                                             5_sustitucionComandos.sh                                                                            0000764 0001750 0001750 00000000534 13750656766 016435  0                                                                                                    ustar   jonamaita                       jonamaita                                                                                                                                                                                                              #! /bin/bash
# Programa para revisar como ejecutar comandos dentro un programa
# y alamacenarlos en una variable para su posterior utilización
# Autor: Jonathan Maita

# Usando backtick
ubicacionActual=`pwd`

#Usando $(comando)
infoKernel=$(uname -a)

echo "Estoy en la ubicación: $ubicacionActual"
echo "La información del kernel: $infoKernel"
                                                                                                                                                                    6_readEcho.sh                                                                                       0000764 0001750 0001750 00000000757 13751131622 014056  0                                                                                                    ustar   jonamaita                       jonamaita                                                                                                                                                                                                              #! /bin/bash
# 6_readEcho.sh
# Programa para ejemplificar como capturar la información del usuario utilizando
# el comando echo, read y la variable $REPLY.
# Autor: Jonathan Maita

option=0
backupName=""

echo "Programa Utilidades Postgres"

# -n genera una nuea linea o puede ingresar la opcion en la misma linea
echo -n  "Ingresa una opción: "
read
option=$REPLY
echo -n "Ingresa el nombre del archivo del backup: "
read
backupName=$REPLY
echo "La opciones: $option, backupName:$backupName"
                 7_read.sh                                                                                           0000764 0001750 0001750 00000000560 13751132430 013246  0                                                                                                    ustar   jonamaita                       jonamaita                                                                                                                                                                                                              #! /bin/bash
# 7_read.sh
# Programa para ejemplificar como capturar la información del usuario utilizando
# el comando read.
# Autor: Jonathan Maita

option=0
backupName=""

echo "Programa Utilidades Postgres"

read -p "Ingresa una opción: " option
read -p "Ingresa el nombre del archivo del backup: " backupName

echo "La opciones: $option, backupName:$backupName"
                                                                                                                                                8_readValidate.sh                                                                                   0000764 0001750 0001750 00000001115 13751625620 014726  0                                                                                                    ustar   jonamaita                       jonamaita                                                                                                                                                                                                              #! /bin/bash
# 8_readValidate.sh
# Programa par ejemplificar como capturar información del usuario y validarla
# utilizando read
# Autor: Jonathan Maita

option=0
backupName=""
clave=""

echo "Programa utilidades Postgres"
# Acepta el ingreso de información de un solo caracter
read -n1 -p "Ingresar una opción:" option
# Salto de linea
echo -e "\n" 
read -n10 -p "Ingresar el nombre del archivo del backup:" backup
echo -e "\n"
echo "Opción:$option , Nombre del Backup: $backupName"
# Ingresar datos de manera silenciosa o oculta.
read -s -p "Clave:" clave
echo "La clave es: $clave"
                                                                                                                                                                                                                                                                                                                                                                                                                                                   8_regularExpression.sh                                                                              0000764 0001750 0001750 00000002305 13751425061 016061  0                                                                                                    ustar   jonamaita                       jonamaita                                                                                                                                                                                                              #! /bin/bash
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
                                                                                                                                                                                                                                                                                                                           9_options.sh                                                                                        0000764 0001750 0001750 00000001467 13752012502 014035  0                                                                                                    ustar   jonamaita                       jonamaita                                                                                                                                                                                                              #! /bin/bash
# 9_options.sg
# Programa par ejemplificar como se realiza el paso de opciones con o sin parametros
# Autor: Jonathan Maita

echo "Programa Opciones"
# Capturamos la opciones
echo "Opción 1 enviada:$1"
echo "Opción 2 enviada:$2"
# Mostramos todas las opciones envíadas
echo "Opciones enviadas: $*"
echo -e "\n"

# Mientras que la opción $1 no sea nulo estamos en el while, recordemos que 
# switf va desplazando los parametros hacia la izquierda y al mismo tiempo eliminando
# por ende, $1 va tomando cada argumento 
while [ -n "$1" ]
do
    # Verificamos en cada iteración el argumento $1
    case "$1" in
	-a) echo "-a Opción valida";;
	-b) echo "-a Opción valida";;
	 *) echo "Opcion $1 invalida";;
    esac
    # En cada iteración desplazamos los parametro a la izquierda son shift
    shift
done

                                                                                                                                                                                                         reto_2.sh                                                                                           0000764 0001750 0001750 00000001765 13753324713 013320  0                                                                                                    ustar   jonamaita                       jonamaita                                                                                                                                                                                                              #! /bin/bash
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
           reto_3.sh                                                                                           0000764 0001750 0001750 00000002344 13754303312 013304  0                                                                                                    ustar   jonamaita                       jonamaita                                                                                                                                                                                                              #!/bin/bash
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

                                                                                                                                                                                                                                                                                            reto_4.sh                                                                                           0000764 0001750 0001750 00000002520 13756606151 013312  0                                                                                                    ustar   jonamaita                       jonamaita                                                                                                                                                                                                              #!/bin/bash
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
                                                                                                                                                                                reto_5.sh                                                                                           0000764 0001750 0001750 00000000567 13761611355 013322  0                                                                                                    ustar   jonamaita                       jonamaita                                                                                                                                                                                                              #!/bin/bash
# reto_5.sh
# Escribir información del usuario en un archivo y la fecha

archivo="log.log"
user=`logname`
date=`date +"%Y-%m-%d"`
hour=`date +"%H-%M-%S"`

# Crea el archio si no existe
if [ ! -f ${archivo} ]
then
    echo "Creando ${archivo}"
    touch ${archivo}
fi

echo "El usuario: ${user} ha ejecutado el script el día ${date} a las ${hour}" >>${archivo}

                                                                                                                                         tests_expresion.sh                                                                                  0000764 0001750 0001750 00000000245 13754256471 015362  0                                                                                                    ustar   jonamaita                       jonamaita                                                                                                                                                                                                              #!/bin/bash
# Programa para  probar una expresión

echo "Cuanto es 1 + 2"
read "texto"
if [ "$texto" = "3" ]
then
    echo "Correcto"
else
    echo "Incorrecto"
fi
                                                                                                                                                                                                                                                                                                                                                           utilityHost.sh                                                                                      0000764 0001750 0001750 00000000347 13750664000 014453  0                                                                                                    ustar   jonamaita                       jonamaita                                                                                                                                                                                                              #! /bin/bash
# utilityHost.sh
# Reto de la clase. Inicializar dos valores e imprimirlos en pantalla
# Autor: Jonathan Maita

opcion="sumar"
result=`expr 10 + 10`

echo -e "\nla opcion es sumar:$opcion, el resultado es: $result\n"

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         