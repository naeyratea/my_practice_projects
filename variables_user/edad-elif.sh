#!/bin/bash
#Preguntar edad:
read -p "¿Cuántos años tienes? " edad
# Ver si es  menor, adulto o jubilado.
if (( edad < 18 )); then
echo "Eres menor de edad."
elif (( edad < 65  )); then
echo "Eres adulto. "
elif (( edad <= 120 )); then
echo "Estás jubilado. "
else 
echo "¿Seguro que no eres un vampiro? "
fi

