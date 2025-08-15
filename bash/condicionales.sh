#!/bin/bash
# Pedimos un número al usuario
read -p "Escribe un número: " numero
# Comprobamos si el número es mayor que 10
if [ "$numero" -gt 10 ]; then
echo "El número $numero es mayor que 10"
else 
echo "El número $numero no es mayor que 10"
fi
