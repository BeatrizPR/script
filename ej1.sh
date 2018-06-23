# !/bin/bash
#Beatriz Parejo Ramos

# Cuantos parametros se pasan y cuantos son directorios y cuantos archivos

numDirectorio=0
numArchivo=0

	if [ $# > 0 ]; then
	   echo "Has introducido $# parametros"
	else
	   echo "No has introducido ningún parámetro"
	   echo "Debes introducir directorios, ficheros o ambos. Al menos debes introducir uno."
	fi


for parametro in $@; do

	if [ -d $parametro ]; then
		echo "$parametro es un directorio"
	        let numDirectorio+=1

	elif [ -f $parametro ]; then

		echo "$parametro es un fichero"
		let numArchivo+=1
	else
		echo "$parametro es otro tipo de archivo"

	fi
done

echo ""
echo "Se han introducido $numDirectorio directorios"
echo "Se han introducido $numArchivo ficheros"
