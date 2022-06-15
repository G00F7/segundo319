print ("\nFibonacci Estructurada")
n = int(input("Ingrese un N : "))
a = -1
b = 1
c = 0
for i in range(n):    
    aux = a + b + c
    a = b
    b = c
    c = aux
    print (c,end=", ")

