#!/bin/bash
#Ejercicio 3: Pide un número y dice si es par o impar.

#Pide número:
read -r -p "Escribe un número y yo le diré si es par o impar: " numero

#Utilizar número para ver si es par o impar:
if  (( $numero % 2 == 0 )); then
  echo "El número $numero es par. "
else
  echo "El número $numero es impar. "
fi

