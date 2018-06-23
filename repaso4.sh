#!/bin/bash
# Beatriz Parejo Ramos
# Sistemas Informaticos

clear

# Inicializamos el archivo
touch usuarios.txt

# Cogemos la información del archivo etc/passwd
USUARIOS=`cat /etc/passwd | cut -f1,3 -d:`

for usr in $USUARIOS; do

    nom=`echo $usr | cut -f1 -d:`
    ids=`echo $usr | cut -f2 -d:`
    dir="/home/"$nom

   # Comprobamos si el directorio home del usuario existe
    if [ -d $dir ]; then
        exi="SI"
    else
        exi="NO"
    fi

    # Capturamos los grupos
    GRUPOS=`grep $nom /etc/group | cut -f1 -d:`

    # Creams el archivo
    echo $ids";"$nom";"$exi";"$GRUPOS >> usuarios.txt

done
