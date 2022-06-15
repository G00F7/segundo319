fibo :: Int -> Int
fibo 1 = 0
fibo 2 = 1
fibo 3 = 1
fibo n | n > 3 = fibo(n-1) + fibo(n-2) + fibo(n-3)

ordenSuperior :: Int -> [Int]
ordeSuperior n = [fibo(x) | x <- [1..n], x > 0]


main = do
 putStrLn "\nFibonacci Funcion Orden Superior"
 putStrLn "Introduzca un N : "
 n<-getLine
 putStrLn "Los N primeros fibonacci "
 print(ordenSuperior(read n :: Int))
