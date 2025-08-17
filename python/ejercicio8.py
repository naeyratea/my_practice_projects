#Ejercicio8: Sumar los números del 1 al 10 utilizando un bucle for:

#Lugar donde acumular la suma:(iniciamos la variable acumuladora)
total = 0

#Recorrer todos los números del 1 al 10 uno a uno, utilizar range para generar números inclusive hasta el exclusive: range(1, 11)

for numero  in range(1, 11):

#Acumular suma:

	total += numero

#Mostrar resultado:

print(f"La suma del 1 al 10 es {total}")
