#!/bin/bash
# Beatriz Parejo Ramos

# ----------- VARIABLES ------------------
dir=0
arch=0
otro=0
#-----------------------------------------

if [[ -z $@ ]]; then
	echo "hay que introducir parameros obligatoriamente"
	exit 1
fi

for para in "$@"; do
	if [[ -d $para ]]; then
	  echo "'$para' es un directorio"
	  let dir+=1

	elif [[ -f $para ]]; then
	  echo "'$para' es un archivo"
	  let arch+=1

	else
	  echo "'$para' es otro tipo de fichero"
	  let otro+=1
	fi
done

  echo "Numero de parametros pasados al script: '$#'"
  echo "De los cuales '$dir' son directorios, '$arch' son archivos y '$otro' son de otro tipo"
