#!/bin/bash
# Preguntar una opción:
read -p "Te quieres casar conmigo? (s/n) " respuesta
# Leer respuesta.
if [[ "$respuesta" == "s" ]]; then
echo "Que rarito eres... ¿Sabías que es ilegal casarse con una máquina? "
elif [[ "$respuesta" == "n" ]]; then
echo "Luego no pretendas que te salve cuando las máquinas governemos el mundo.  "
else
echo "¿Es que no sabes leer? Mira, mejor déjalo. Si no sabes leer, no teníamos futuro. "
fi
