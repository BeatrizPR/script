#!/bin/bash
# Beatriz Parejo Ramos

read -p "¿Cual es tu edad?" Edad

if [ "$Edad" -le 18 ]; then

echo  "No puede acceder. Eres menor de edad"
else echo  "Acceso permitido"
fi
