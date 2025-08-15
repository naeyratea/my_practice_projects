#!/bin/bash
#Preguntar nombre para carpeta:
read -p "¿Qué nombre quieres ponerle a tu carpeta? " carpeta
#Crear una carpeta con ese nombre:
mkdir "$carpeta"
#entrar en la carpeta:
cd "$carpeta"
#Preguntar por nombre del archivo:
read -p "Inserta el nombre y el tipo de archivo que quieres crear " archivo
# Crear archivo:
touch "$archivo"
#Mensaje de confirmación:
echo "Se creó la carpeta '$carpeta' y el archivo '$archivo' dentro."

