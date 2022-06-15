fibo :: Int -> Int
fibo 1 = 0
fibo 2 = 1
fibo 3 = 1
fibo n | n > 3 = fibo(n-1) + fibo(n-2) + fibo(n-3)

fibonacci :: Int -> [Int]
fibonacci n = [fibo(x) | x <- [1..n], x > 0]

-- funcion de orden superior 
ordenSuperior function n = function n

main = do
 putStrLn "\nFibonacci Funcion Orden Superior"
 putStrLn "Introduzca un N : "
 entrada<-getLine
 let n = read entrada :: Int
 putStrLn "Los N primeros fibonacci "
 print(ordenSuperior fibonacci n)
