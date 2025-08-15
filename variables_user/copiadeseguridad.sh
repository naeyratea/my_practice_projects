#!/bin/bash
# Script de copia de seguridad

# Preguntar carpeta a respaldar
read -p "Indica la carpeta que quieres respaldar: " origen

# Verificar si existe la carpeta origen
if [ ! -d "$origen" ]; then
    echo "La carpeta indicada no existe."
    exit 1
fi

# Carpeta donde se guardarán las copias
carpeta_destino="/home/naeyra/copias_seguridad"

# Crear carpeta destino si no existe
mkdir -p "$carpeta_destino"

# Fecha y hora actual para el nombre del archivo
fecha=$(date +%Y-%m-%d_%H-%M-%S)

# Ruta final de la copia
destino="$carpeta_destino/copia_$fecha"

# Hacer la copia
cp -r "$origen" "$destino"

# Confirmar
echo "Copia realizada en: $destino"

