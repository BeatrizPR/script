#!/bin/bash
#Beatriz Parejo Ramos

salirBucle=e

function pintar_menu()
{
   echo "-----------------------"
   echo ""
     echo "¿Qué quieres hacer?"
     echo "a) Suma"
     echo "b) Resta"
     echo "c) Multiplicacion"
     echo "d) División"
     echo "e) Salir"
   echo ""
read -p "Elige una opción: " opcion
   echo ""
   echo "-----------------------"
   echo ""
}

function seguir()
{
    echo "Pulsa enter para hacer otra operación o salir"
    read foo
    clear
    pintar_menu
}

function pedirNumeros()
{
    read -p "Escribe un número: " num1
    read -p "Escribe otro número: " num2
    echo " "
}
pintar_menu

while [[ $opcion != salirBucle ]]; do
  case $opcion in
  a)
    echo "a) Suma"
    pedirNumeros
    #if [[ -z $num1 ]] && [[ -z $num2 ]]; then
      suma=$((num1 + num2))
    echo $suma
    echo " "
    seguir
    #else
      #echo "[ERROR] Introduce un número en cada opción"
    #fi
    ;;
  b)
    echo "b)Resta"
    pedirNumeros
    resta=$((num1 - num2))
    echo $resta
    echo ""
    seguir

    ;;
  c)
    echo "c)Multiplicación"
    pedirNumeros
    multiplicacion=$((num1 * num2))
    echo $multiplicacion
    echo ""
    seguir
    ;;
  d)
    echo "d)División"
    pedirNumeros
    division=$((num1 / num2))
    echo $division
    echo ""
    seguir
    ;;
  e)
    echo "e) Salir"
    echo "Has elegido salir. Hasta pronto"
    exit 0
    ;;
  *)
    echo "[ERROR] Tu opción no es correcta"
    echo ""
    seguir
esac

done
 
