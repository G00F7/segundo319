fibo :: Int -> Int
fibo 1 = 0
fibo 2 = 1
fibo 3 = 1
fibo n | n > 3 = fibo(n-1) + fibo(n-2) + fibo(n-3)

fibonacci ::Int -> [Int]
fibonacci n = [fibo(x) | x <- [1..n], x > 0]

main = do
 putStrLn "\nFibonacci Recursivo"
 putStrLn "Introduzca un N : "
 n<-getLine
 putStrLn "Los N primeros fibonacci "
 print(fibonacci(read n :: Int))
