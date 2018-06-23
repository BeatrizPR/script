echo "COMANDOS MAN"

#cal : cal [-3hy] [-A num] [-B num] [[mes] año]  calendario
# -h : oculta el indicador de dia actual
# -3 : muestra el mes a tual, el anterior y el proximo
# -m mes : muestra el mes especificado
# -y año : muestra el calendario para el año especificado
# -A n : muestra los n meses siguientes al mes actual
# -B n : muestra los n meses anteriores al mes actual

#cat : cat [-bn] [archivo ...] visualizacion y concatenacion de archivos
# -b : muestra el numero de cada linea no vacia
# -n : muestra el numero de cada linea

#cp : copiar 1º se indica el archivo fuente y despues el de destino
#                  EJEMPLO:  cp fichero1.txt fichero2.txt 
# -n : impide la sobreescritura si el archivo existe
# -R : Si el archivo de origen es un directorio, el comando cp realiza una copia de
#      éste y de todo su árbol de contenidos.
# -v : Obliga al comando a mostrar información del proceso de copia.

#cut : cortar informacion y separar, extraer los campos que se quieran
#       indicar el caracter separador
#     cut [opciones] [archivo ...]
# -b : Selecciona únicamente el byte indicado
# -c : Selecciona únicamente ese número de carácter
# -f : Selecciona únicamente el campo indicado. Debe utilizarse en conjunción con
#el parámetro –d que nos permitirá especificar el carácter separador de campos utilizado.
# 					EJEMPLO: cut -f4 -d, datos.csv

#date:  fecha         date [opciones] [+formato]
# %d  : Muestra el día del mes (1-31).
# %y  : Muestra los dos últimos dígitos del año.
# %Y  : Muestra los cuatro dígitos del año.
# %T  : Muestra la hora en formato hh:mm:ss
# %H  : Muestra la hora.
# %M  : Muestra los minutos.
# %S  : Muestra los segundos.
# %h  : Muestra el mes (Enero – Diciembre).
# %a  : Día de la semana en formato abreviado.
# %A  : Día de la semana en formato completo.
#Solo el superusuario podrá establecer la fecha y hora del sistema utilizando
#el formato MMDDhhmmAA donde MM es el número del mes, DD el día, hh la hora, mm los minutos y AA el año.
#     		EJEMPLO:  date "+Hoy es %A, día %d de %h"

#file : detectar tipo y formato de un archivo
# 			file [opciones] [fichero …]
# -b  : Oculta el nombre del archivo cuando el comando muestra información.
# -z  : Intenta mostrar el contenido de un archivo comprimido.
# -p  : Conserva la fecha del último acceso al fichero.
# -f  : Permite especificar un nombre de archivo con un listado de archivos de los que deseamos obtener información.
# --mime -type  : Muestra el tipo del archivo con objeto de comprobar si es realmente
#                 el tipo de archivo que creemos que es.
# --mime-encoding  : Nos permite averiguar la codificación de caracteres con que fue guardado el archivo.

# find : encontrar algo en un fichero en el directorio indicado
#         find [ruta…] [expresión]
#        operadores –a (and), -o (or) y ! (not)
# -atime n  : El archivo fue accedido en las últimas 24*n horas.
# -ctime n  : El estado del archivo ha cambiado en las últimas 24*n horas.
# -group nm : El archivo pertenece al grupo indicado como parámetro.
# -inum n   : El número del inodo del archivo es n.
# -mtime n  : El contenido del archivo se ha modificado en las últimas 24*n.
# -name pat : Permite especificar un patrón de búsqueda para el nombre del archivo.
# -size n   : El tamaño del archivo es n. Podemos especificar el tamaño en bytes, kilobytes,
#            megabytes y gigabytes, anteponiendo c, k, M y G respectivamente delante de n.
# -type tp  : Nos permite especificar el tipo del archivo, donde tp puede tomar los valores: 
#           f (cualquier archivo), d (directorios) y l (enlaces simbólicos), entre otros.
#        EJEMPLO : fund /Desktop -type f -name "*.txt" -size +4k

#finger : muestra informacion de los usuarios del sistema (si no se especifica, lo hace de todos) 
#          finger [-lmsp] [user…]
#  -s  : Muestra información específica sobre el usuario.
#  -l  : Muestra la información solicitada con –s en formato multilínea.

#free : muestra informacion sobre el uso de memoria, la q se usa, libre,buffers y la usada por kernel

#gzip : comprimir archivos separados       gzip archivo
#       EJEMPLO : gzip datos.csv
# -l  : Muestra detalles sobre el archivo comprimido.
# -r  : Recorre recursivamente el árbol de directorios y, si alguno de los archivos
#        contenidos cumple el patrón especificado, lo comprime.
# -t  : Comprueba la integridad de un archivo comprimido.
# -v  : Muestra información sobre el proceso de compresión.
# -#  : Regula la velocidad/calidad de compresión, donde # será un número
#       comprendido entre 1 (menos compresión) y 9 (mejor compresión).
# -d  : Cumple el mismo cometido que gunzip, esto es, descomprime los archivos indicados.

# gunzip  : descomprimir archivos .gz

#tar : comprimir varios archivos en un mismo fichero
#   podemos usar tambien  zip  y   unzip
# -v  : Muestra en pantalla información sobre el proceso de empaquetamiento.
# -c  : Crea un archivo tar.
# -f  : Nos permite especificar el nombre del archivo .tar.
# -t  : Con esto obtenermos un listado del contenido de un archivo .tar
#        EJEMPLO : tar -vcf ejemplo.tar *.*  
#   (El ejemplo comprime todos los archivo con alguna extension en la carpeta)

#  PARA DESEMPAQUETAR 
# -x y -f
#  EJEMPLO: tar -xf ejemplo.tar *.txt

#head : Muestra por defecto las 10 primeras lineas
# -n  : se puede especificar el número de linea a mostrar
#           EJEMPLO : head -n 2 comandos.txt

#ps : lista los procesos que se están ejecutando
# -A  : Muestra todos los procesos de todos los usuarios del sistema.
#  a  : Muestra todos los procesos de la terminal actual incluyendo los de otros
#       usuarios.
#  r  : Muestra únicamente los procesos que se encuentran corriendo.
#  u  : Muestra una columna con información sobre el usuario propietario de cada
#       proceso.
#  x  : Muestra los procesos al estilo BSD (Berkeley Sofware Distribution).
# -U usr  : Muestra los procesos de un determinado usuario usr.
#  Se SUELEN USAR   aux    y  axjf

#kill  : Se escribe junto al PID del proceso que se quiere finalizar
#  podemos ver el PID con ps   EJEMPLO : kill 8765
# -SIGKILL  : Indica al proceso que debe finalizar de inmediato, lo cual da lugar a que éste no libere adecuadamente los
#           recursos que se encuentra utilizando. La señal no puede ser ignorada por el proceso.
#    EJEMPLO : kill -SIGKILL  8765

#top : informacion sobre procesos en ejecucion a tiempo real
#		para salir   q  o CTRL +Z

#less  :  mostrar el texto por pantalla linea a linea
#  -c  : Limpia la pantalla antes de mostrar el texto.
#  +n  : Muestra el archivo empezando en la n-ésima línea.
#  -N  : Muestra las líneas del archivo numeradas.
#  -p  : Inicia la visualización del archivo buscando un determinado patrón.
#   EJEMPLO  : less datos.csv

#moore  : muestra más - se puede ver la ayuda con  la opción  h

#locate : buscar archivos
#    locate [opciones] patron
# -c  : Cuenta y muestra en pantalla el número de ocurrencias.
# -i  : Ignora la distinción entre minúsculas y mayúsculas.
# -r  : Busca una expresión regular básica.
# --regex  : Interpreta el patrón indicado como una expresión regular extendida.
#              EJEMPLO: locate --regex "a{2,}.txt"

#ls : muestra una lista con los archivos contenidos en el directorio actual
# 			ls [opciones] ... [archivo] ...
# -a  : Muestra todos los archivos y directorios, incluyendo los que están ocultos.
# -l  : Muestra toda la información: usuario, grupo, permisos, tamaño, fecha y hora
#       de creación del archivo.
# -h  : Muestra el tamaño de los archivos expresado en KB, MB, GB, etc.
# -t  : Ordena los archivos por fecha de modificación.
# -X  : Ordena los archivos por extensión.
# -S  : Ordena los archivos por tamaño.
# -R  : Muestra el contenido de todos los subdirectorios de manera recursiva.

#mkdir : crear carpetas
#  -p  : crea carpetas con más carpetas dentro, crea al hijo y el padre

#mv : para mover y renombrar archivos
#  mv [opciones] origen destino
# 		EJEMPLO : mv ejemplo.tar comprimido.tar
# -f  : Se fuerza la sobreescritura en caso necesario y sin preguntar al usuario.
# -i  : Fuerza el modo interactivo y pregunta al usuario qué desea hacer en caso
#       de que sea necesaria la sobreescritura.
# -n  : Indica al comando que jamás debe sobreescribir los archivos existentes.

#ping : se hace ping para averiguar si un host remoto se encuentra online
#			ping [opciones] host
# -a  : Hace audible el ping cada vez que se recibe una respuesta.
# -c  : Permite especificar el número de paquetes enviados.
# -i  : Especifica el intervalo de tiempo entre transmisiones sucesivas que, por
#       defecto es de un segundo.
# -w n  : Deja de hacer ping tras n segundos.

# rm y rmdir : borra archivos y carpetas
# -i  : Muestra un mensaje de confirmación antes de cada borrado.
# -r  : Elimina directorios y sus contenidos de forma recursiva.
# -d  : Nos permite eliminar los directorios vacíos si necesidad de utilizar –r.
#       Emplear este parámetro nos daría un resultado similar al comando rmdir.
# -v  : Modo descriptivo.
#				EJEMPLO : rm -r patata
# -p  : Borra la carpeta y el directorio padre que se escriba
#       por ejem: rmdir -p prueba/test

#sleep : pausa durante un cierto periodo de tiempo (Con s, m, h, d)
#        EJEMPLO : sleep 1m

#sort : ordena linea a linea de un archivo
#		sort [opciones] ... [archivos] ...
# -f  : No distingue entre minúsculas y mayúsculas.
# -r  : Ordena de forma inversa.
# -m  : Une los archivos indicados.

#tac: Se encargará de concatenar en orden inverso cada uno de los archivos especificados como parámetros.
#     Su uso es habitual a la hora de examinar cronológicamente archivos de log, 
#       en los que la entrada más reciente se encuentra al final.
#          tac  [archivos] ...

#tail: muestra las 10 ultimas lineas
# -n 2 : con n y un numero esas ultimas lineas. En este caso 2 ultimas
#        EJEMPLO : tail -n 3 comandos.txt

#touch: para cambiar la marca de tiempo de los archivos, 
#        aunque también puede ser útil para crear archivos vacíos
# El comando ls será capaz de mostrar información únicamente sobre las marcas de tiempo atime,
#    ctime y las marcas de acceso: access, use y status. 
#También el comando stat nos permitirá visualizar información al respecto.
# -c  o  --format=  : Nos permite indicarle al comando stat el formato en que deseamos
#          visualizar la información, así como los datos que queremos que nos muestre.
#   EJEMPLO  : stat -c=%x%Y%y esdla.txt
# la marca de tiempo del último acceso (%x) y de la última modificación (%y). 

#touch :
# -a  : Establece el tiempo de acceso únicamente.
# -m  : Establece únicamente el tiempo de modificación.
# -c  : Indicamos que no cree un nuevo archivo.
# -d fecha  : Parsea la cadena dada y la utiliza como marca de tiempo actual. 
#     Serán cadenas de fecha permitidas: “1 May”, “9 July”, “Apr 25 2018 09:00:00”.
# -h  : Si el archivo especificado es un enlace simbólico, touch modificará la
#       marca de tiempo del enlace, pero no del archivo original.
# -t  : Nos permite utilizar una marca de tiempo utilizando el siguiente formato:
#        [[CC]YY]MMDDhhmm[.ss]

# uname  : muestra informacion del sistema
# -a  : Muestra toda la información.
# -s  : Muestra el nombre del kernel del sistema.
# -n  : Muestra el nombre del equipo.
# -r  : Muestra información sobre la fecha de liberación del kernel.
# -v  : Muestra la versión sobre la versión del kernel.
# -p  : Muestra el tipo de procesador.
# -i  : Muestra información sobre el hardware.
# -o  : Muestra información sobre el sistema operativo.
#          EJEMPLO :  uname -a

# w : muestra los usuarios logueados en el sistema

# whatis : seguido del comando, muestra lo que hace este

#whereis : localiza un archivo binario, la pagina y secciones del manual de ayuda

#grep : buscar en un fichero o carpeta.
# -c  : Realiza un conteo y muestra por pantalla el número de líneas que coinciden con el patrón.
# -e  : Se utiliza para indicar el patrón de búsqueda.
# -E  : Se emplea cuando deseamos escapar ciertos caracteres especiales.
# -r  : Busca de manera recursiva dentro de todos los subdirectorios del directorio actual.            
# -v  : Nos muestra las líneas que no coinciden con el patrón buscado.
# -i  : Ignora la distinción entre minúsculas y mayúsculas.
# -n  : Numera las líneas en la salida.
# -o  : Indica a grep que muestre únicamente la parte de la línea que coincide con el patrón.
# -q  : no muestra niguna salida
# 			EJEMPLO: grep "[^a]\.$" patatas.txt  -  buscara las palabras que no terminen en a y tengan un punto

# wc : cuenta las palabras de un documento
# -c   : cuenta el número de caracteres
# -w   : cuenta el número de palabras
# -l   : cuenta el número de lineas

#cd: El shell trabajará siempre sobre el directorio actual. 
#Este comando nos permite cambiar el directorio de trabajo actual.

#pwd: Imprime en pantalla el directorio de trabajo actual.

#type: Nos resultará de utilidad para conocer si un comando es interno, externo o un alias.

#echo: Muestra en pantalla la cadena de texto especificada. 
#Podremos utilizar comillas simples (‘) que interpretan el contenido de forma literal.
#Las comillas dobles (“) interpreta las referencias a las variables 
#y escribe en su luigar el contenido de estas.
# para que interprete el comando dentro del echo con `` comillas inclinadas

#time: Nos permite cronometrar el tiempo que tardan en ejecutarse los comandos especificados como parámetros.
#El resultado se muestra cuando finaliza por completo el comando mostrándose tres tiempos: ejecución total o
#real, el de CPU de usuario (tiempo de ejecución en modo usuario) y el de CPU del sistema (tiempo de 
#ejecución en modo protegido).

#history: Cada entrada de dicho listado aparecerá numerada de manera que, si queremos ejecutar
#un comando en particular bastará con escribir: !x donde x es el número correspondiente a dicho comando.

# history n	Mostrará los últimos n comandos del historial.
#!!	Ejecutará el último comando.
#!-n	Ejecutará el n-ésimo comando desde el final del historial.
#!ls	Ejecutará el ls más reciente.

#exec : ejecuta el programa que se escriba tras él

# exit logout : Ambos comandos cierran la consola. El primero de ellos cerrará cualquier consola, en
#tanto que logout terminará aquellas de inicio de sesión, esto es, 
#aquellas que se ejecutan automáticamente al iniciar un acceso en modo texto).

# alias: alias nombre=comando
