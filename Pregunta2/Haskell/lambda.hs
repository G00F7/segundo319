fibo :: Int -> Int
fibo 1 = 0
fibo 2 = 1
fibo 3 = 1
fibo n | n > 3 = fibo(n-1) + fibo(n-2) + fibo(n-3)

fibonacci :: Int -> [Int]
fibonacci n = map (\x -> fibo(x))[1..n-1]

main = do
 putStrLn "\nFibonacci Funciones Temporales(lambda)"
 putStrLn "Introduzca un N : "
 n<-getLine
 putStrLn "Los N primeros fibonacci "
 print(fibonacci(n))