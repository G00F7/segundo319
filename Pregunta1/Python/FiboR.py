def fiboRecursivo(n):
    if n == 0: return 0
    if n == 1: return 1
    if n == 2: return 1
    return fiboRecursivo(n-1) + fiboRecursivo(n-2) + fiboRecursivo(n-3)

print ("\nFibonacci Recursivo")
n = int(input("Ingrese un N : "))
for i in range(n):
    print(fiboRecursivo(i), end=", ")