#Ejercicio3 comprobación de capacidad de conducción:
#Pedir datos al usuario:
edad = int(input("¿Cuál es tu edad? "))
#Preguntamos si el carnet de conducir está en su posesión:
carnet = input("¿Tiene un carnet de conducir en su posesión? (s/n) ")
#Creamos la condicional:
if edad >= 18 and carnet == "s":
	print("Puede conducir. ")
else:
	print("No puede conducir.")
