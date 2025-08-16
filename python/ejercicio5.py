#Ejercicio5: Número positivo, negativo o cero:

#Pedimos la variable:
numero = int(input("Escribe un número para averiguar si es positivo, negativo o es cero: "))

#Utilizamos la variable para dar el resultado:
if numero >= 1:
	print("El número es positivo")
elif numero == 0:
	print("El número es cero.")
else:
	print("El número es negativo")

