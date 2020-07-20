// SICP 1.2.1
// Linear Recursion and Interation

let rec fact1 n =
   if n = 1 then 1 else n * fact1(n-1)

let result = fact1(7)

printfn "%i" result

// fsharpc factorial.fsx && mono factorial.exe
