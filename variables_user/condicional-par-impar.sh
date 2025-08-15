#!/bin/bash
#Pedir número:
read -p "Diga un número y le diré si es par o impar: " numero
#Operar para saber si se divide entre 2 el resto es 0:
if (( $numero % 2 == 0 )); then
echo "$numero es impar. "
else
echo "$numero es impar. "
fi
 
