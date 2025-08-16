#Ejercicio7: Cuál de los 3 es el mayor de forma limpia y ordenada:

#Pedimos los variables:

num1 = int(input("Dáme un número: "))
num2 = int(input("Dáme un segundo número "))
num3 = int(input("Dáme un tercer número "))

#Utilizamos max() para saber el máximo:
maximo= max(num1, num2, num3)

#Creamos una lista vacía para guardar mayores:
mayores = []


#Comparamos los números que son iguales a máximo:
if num1 == maximo:
	mayores.append(num1)
if num2 == maximo:
	mayores.append(num2)
if num3 == maximo:
	mayores.append(num3)

#Mayores contiene ahora todos los números que son iguales al máximo:
if len(mayores) == 1:
	print(f"{mayores[0]} es el número mayor")
elif len(mayores) == 2:
	print(f"{mayores[0]} y {mayores[1]} son los números mayores. ")
else:
	print("Todos los números son iguales." )


