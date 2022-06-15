fibo :: Int -> Int
fibo n = aux n 0 1 1 where
    aux 1 a b c = a
    aux 2 a b c = b
    aux 3 a b c = c
    aux n a b c = aux (n-1) b c (a+b+c)

fibonacci ::Int -> [Int]
fibonacci n = [fibo(x) | x <- [1..n], x > 0]

main = do
 putStrLn "\nFibonacci Estructurada"
 putStrLn "Introduzca un N : "
 n<-getLine
 putStrLn "Los N primeros fibonacci "
 print(fibonacci(read n :: Int))