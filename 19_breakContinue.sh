#/bin/bash
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
