#!/bin/bash
#Pedimos dos números:
read -p "Dime un número: " numero1
read -p "Dime el segundo número: " numero2
#Hacemos la suma:
suma=$((numero1 + numero2))
#Mostrar resultado:
echo "La suma de $numero1 y $numero2 es: $suma"

