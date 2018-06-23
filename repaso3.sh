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
          echo "'$para' es un directorio y contiene `ls $para | wc -l` ficheros y o directorios"
          let dir+=1

        elif [[ -f $para ]]; then
          echo "'$para' es un archivo con tamaño `du -bsh $para | cut -f 1`"
		if [[ -r $para ]]; then
			echo "tienes permiso de lectura"
		else
			echo "no puedes leer"
		fi
		if [[ -w $para ]]; then
			echo "tienes permiso de escritura"
		else
			echo "no puedes escribir"
		fi
		if [[ -x $para ]]; then
			echo "tienes permiso de ejecucion"
		else
			echo "no puedes ejecutar"
		fi
          let arch+=1

        else
          echo "'$para' es otro tipo de fichero"
          let otro+=1
        fi
done

  echo "Numero de parametros pasados al script: '$#'"
  echo "De los cuales '$dir' son directorios, '$arch' son archivos y '$otro' son de otro tipo"
