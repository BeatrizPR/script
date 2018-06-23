#!/bin/bash
# Beatriz Parejo Ramos

## para ejecutar el script necesitamos los archivos csv usuarios y telefonos 
# $1 es el id pasado como parametrro

if [[ -z $1 ]];
then
        echo "[ERROR]"
        echo "Es obligatorio introducir un parametro"
        echo "USO: ej4.sh ID o NOMBRE COMPLETO"
        exit 1
fi

parametro=$1
usuario=`grep $parametro ./usuarios.csv | cut -f1 -d, | cut -f2 -d-`
datos=`grep $usuario ./usuarios.csv`


echo "ID          : `echo $datos | cut -f1 -d,`"
echo "NOMBRE      : `echo $datos | cut -f2 -d,`"
echo "NACIMIENTO  : `echo $datos | cut -f3 -d,`"
echo "DIRECCION   : `echo $datos | cut -f4 -d,`"
echo "EMAIL       : `echo $datos | cut -f5 -d,`"
echo "UNIVERSIDAD : `echo $datos | cut -f6 -d,`"
echo "DEPARTAMENTO: `echo $datos | cut -f7 -d,`"
echo "CARGO       : `echo $datos | cut -f8 -d,`"
echo "TELÉFONOS   : "
echo  "`grep $usuario telefonos.csv | cut -f2 -d,`"
