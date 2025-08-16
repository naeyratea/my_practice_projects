#Ejercicio5: Mayor de tres números:

#Pedimos tres números:

num1 = int(input("Díme un número: "))
num2 = int(input("Díme otro número: "))
num3 = int(input("Díme el último número "))

#Montamos las variables:
if num1 > num2 and num1 > num3:
	print(f"{num1} es el número mayor. ")
elif num1 < num2 and num2 > num3:
	print(f"{num2} es el número mayor.")
elif num1 == num2 and num3 < num2:
	print(f"{num1} y {num2} son los números mayores")
elif num2 == num3 and num1 < num2:
	print(f"{num2} y {num3} son los números mayores")
elif num1 == num3 and num2 < num1:
	print(f"{num1} y {num3} son los números mayores")
elif num1 == num2 and num2 < num3:
	print(f"{num3} es el número mayor.")
elif num2 == num3 and num3 > num1:
	print(f"{num2} y {num3} son los números mayores")
elif num1 == num3 and num3 < num2:
	print(f"{num1} y {num3} son los números mayores")
else:
	print(f"{num3} es el número mayor.")


