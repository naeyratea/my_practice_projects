#Ejercicio 4: Comprobar capacidad de conducción con elif:

#Pedir variantes al user:
edad = int(input("¿Cuántos años tiene? "))
carnet = input("¿Tiene un carnet de conducir en su posesión? (s/n) ")

#Utilizar las variantes para las condicionales:

if edad >=18 and carnet == "s":
	print("Puede conducir. ")
elif edad <18 and carnet == "s":
	print("Es demasiado joven para conducir.")
elif edad >=16 and carnet == "n":
	print("Debe obtener un carnet de conducir antes.")
else:
	print("No puede conducir." )

