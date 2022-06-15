from functools import reduce
fibonacci = lambda n : reduce(lambda a, _: a + [a[-1] + a[-2] + a[-3]], range(n-2), [0, 1, 1])

print("Fibonacci Funcion Temporal (lambda)")
valor = int(input("Introduzca un N : "))
serie = fibonacci(valor)
print(serie)
