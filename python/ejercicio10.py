#Ejercicio 10: Sumar todos los números del 1 hasta un número que el usuario elija, usando una función.

#1. Definir la función:

def sumar_hasta(n):
	total = 0
	for numero in range(1, n + 1):
		total += numero
	return total

#2. Entrada del usuario:

limite = int(input("Hasta que número quieres sumar? "))
resultado = sumar_hasta (limite)

#3.Llamar a la función:

print(f"La suma del 1 al {limite} es {resultado}")
