#!/bin/bash
#Beatriz Parejo Ramos
#Ejercicio 2
num=$1
ruta=$2

## si numero y ruta vacio o numero negativo
if [[ -z $num ]] && [[ -z $ruta ]] || [[ $num -lt 0 ]]; then
  echo "[ERROR]"
  echo "El numero solicitado tiene que ser positivo y mayor de 0"
  echo "Si la ruta se deja en blanco se usará el directorio actual"
  exit 1
fi

for i in `seq 1 $num`;
  do
    ##si ruta sin valor
    if [[ -z "$ruta" ]]; then
      touch file_$i.txt
    else
      ##si ruta no existe
      if [[ ! -d "$ruta" ]]; then
          mkdir -p "$ruta"
          touch  "$ruta"/file_$i.txt
      else
          touch  "$ruta"/file_$i.txt
      fi

    fi

  done
