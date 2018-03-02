//: Playground - noun: a place where people can play

import UIKit



// Algorimo de primos


func isPrime(n: Int) -> Bool {
    for i in 2..<n {
        if  n % i == 0 {
            return false
        }
        
    }
    return true
}




//algoritmo de fibonacci


func fibonacci(n: Int){
    var a = 0, b = 1
    while b < n{
        print(b)
        (a, b) = (b, a + b)
    }
}
fibonacci(n: 77)



//palindromo

func esPalindromo(palabra: String) -> Bool {
    let palabra = palabra.lowercased().filter { $0 != " " }
    return palabra == String(palabra.reversed())
}
esPalindromo(palabra: "Anita lava la tina")


//Funcion que compare dos cadenas y verifique que contenga los mismos caracteres en el mismo o diferente orden
func comparaCadenas(str:String, str2:String) -> Bool{
    return str.count == str2.count && str.sorted() == str2.sorted()
}
comparaCadenas(str: "hola", str2: "aloh")
print(comparaCadenas(str: "hola", str2: "aloh"))




