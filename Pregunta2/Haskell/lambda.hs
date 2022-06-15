fibo :: Int -> Int
fibo 1 = 0
fibo 2 = 1
fibo 3 = 1
fibo n | n > 3 = fibo(n-1) + fibo(n-2) + fibo(n-3)

lambda :: Int -> [Int]
lambda n = map (\x -> fibo(x))[1..n]

main = do
 putStrLn "\nFibonacci Funciones Temporales(lambda)"
 putStrLn "Introduzca un N : "
 entrada<-getLine
 let n = read entrada :: Int
 putStrLn "Los N primeros fibonacci "
 print(lambda(n))
