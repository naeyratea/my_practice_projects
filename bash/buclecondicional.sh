#!/bin/bash
# Script que muestre los números del 1 al 10  indicando si són pares o impares:
 
#Bucle for para  recorrer números del 1 al 10:
for i in $(seq 1 10); do

#condicional para pares o impares:
     if (( i % 2 == 0 )); then
           echo "$i es par"
     else 
           echo "$i es impar"
fi
done

