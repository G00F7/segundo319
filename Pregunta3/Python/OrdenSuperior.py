def OrdenSuperior(n, fun):
	return fun(n)
def fibo(n):
    if n == 0: return 0
    if n == 1: return 1
    if n == 2: return 1
    return fibo(n-1) + fibo(n-2) + fibo(n-3)

print ("\nFibonacci Funcion Orden Superior")
n = int(input("Ingrese un N : "))
for i in range(n):
    print(OrdenSuperior(i, fibo), end=", ")