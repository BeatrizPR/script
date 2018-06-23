#!/bin/bash
#Beatriz Parejo Ramos

# $1 es el nombre del usuario

##comprobar usuario
if [[ -z $1 ]];
then
        echo "El nombre de usuario es obligatorio"
        exit 1
fi

grep -w $1 /etc/passwd > /dev/null

if [[ $? -ne 0 ]];
then
        echo "el usuario introducido no es correcto"
        exit 2
fi

echo "El usuario $1 tiene `ps -ef | cut -f 1 -d " " | grep -c "$1"` procesos en ejecución"

exit 0
