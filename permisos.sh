#!/bind/bash

#Script que reciba un nombre de fichero, verifique que existe y
#que es un fichero comun (lectura-escritura) lo convierta en ejecutable
#para el usuario y el grupo y muestre el estado final de los permisos.

if [ -f $1 ]; then
echo "El parametro introducido es un fichero"
ls -l $1

    if [ -r $1 ];then
    echo " Tiene permisos de Lectura"

        if [ -w $1 ];then
        echo "Tiene permisos de escritura "
        chmod ug+x $1
        ls -l $1

        else
        echo "No tiene permisos de escritura (no es un fichero comun)"
        fi

    else
    echo "No tiene permisos de lectura (no es un fichero comun)"

    fi

else
echo "El fichero no existe "
fi

