// Más información acerca de F# en http://fsharp.net
// Vea el proyecto "Tutorial de F#" para obtener más ayuda.

open System 

[<EntryPoint>]
let main argv = 
    
    printfn "\nFibonacci Estructurada"
    printfn "\nIngresa un N : "
    let n = Convert.ToInt32(Console.ReadLine())
    let mutable a = -1
    let mutable b = 1
    let mutable c = 0
    for i in 1..n do
        let aux = a + b + c
        a <- b
        b <- c
        c <- aux
        printf "%i" c 
        printf ", "
    let tecla =  Console.ReadKey()
    0 // devolver un código de salida entero
