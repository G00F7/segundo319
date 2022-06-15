x = lambda a, b, c: (a + b + c)

def fibonacci (n):
	list = []
	a = -1
	b = 1
	c = 0
	for i in range(n):
		aux = x(a, b, c)
		a = b
		b = c 
		c = aux
		list.append(c)
	print(list)

print("Fibonacci Funcion Temporal (lambda)")
n = int(input("Introduzca un N : "))
fibonacci(n)
