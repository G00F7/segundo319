// Más información acerca de F# en http://fsharp.net
// Vea el proyecto "Tutorial de F#" para obtener más ayuda.
open System

let rec fibo (n: int): int = 
    if n = 0 then 0
    elif n = 1 then 1
    elif n = 2 then 1
    else fibo(n-1) + fibo(n-2) + fibo(n-3)

[<EntryPoint>]
let main argv =
    printfn "\nFibonacci Recursivo"
    printfn "\nIngresa un N : "
    let n = Convert.ToInt32(Console.ReadLine()) 
    for i in 0..n do
        printf "%d" (fibo(i))
        printf ", "
    let tecla = Console.ReadKey()
    0 // devolver un código de salida entero
