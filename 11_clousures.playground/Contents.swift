import UIKit

// 1 global -> clousures
// 2 nested functions (anidadas)
// 3 clousure

// metodo para ordenar
let names = ["Cristian", "Ricado", "Juan Gabriel", "Edgar", "Fredy"]
/**
    funcion con palabra func, nameMethod, llaves
 */
func backward(_ s1: String, _ s2 : String) -> Bool{
    return s1 > s2
}
backward("Juan Gabriel"," Ricardo")
var reverseNames = names.sorted(by: backward)

// tambien hay otra forma de funciones sin palabras
/*
    {(params ) -> return type in
        codigo del clousure
    }
 */

// sintaxis del clousure (magia oscura)
// asi seria mediante codigo
reverseNames = names.sorted(by: { ( s1: String, s2: String) -> Bool in return s1 > s2 })
// para resumir
reverseNames = names.sorted(by: { s1, s2 in  s1 > s2 })
// se puede resumir mas
reverseNames = names.sorted(by: { $0 > $1 })
// se puede resumir aun mas
reverseNames = names.sorted(by: > )


// - - - -  - - - -  - - - -  - - - -  - - - -  - - - -  - - - -  - - - -
//                              Trailing clousures
// - - - -  - - - -  - - - -  - - - -  - - - -  - - - -  - - - -  - - - -


//un trailing se escribe despues de una funcion

func someFunctionThatTakesAClosure(closure : () -> Void){
    // aqui iria el cuerpo de la funcion
}

someFunctionThatTakesAClosure(closure: {
    // aqui iria el cuerpo del closure
})

someFunctionThatTakesAClosure {
    // añadir el closure aqui
    
}
// sintaxis del trailing closure
reverseNames = names.sorted{$0 > $1}

// ejemplo1
let digitNames = [0:"Cero", 1:"Uno", 2:"Dos", 3:"Tres", 4:"Cuatro", 5:"Cinco", 6:"Seis", 7:"Siete", 8:"Ocho", 9:"Nueve"]

let numbers = [16,58,510, 2127]

let numberString = numbers.map{ (number) -> String in
    var number = number
    var output = ""
    repeat{
        output = digitNames[number%10]! + output
        number /= 10
    }while number > 0
    return output
}
let numbersMore = [-1, -34, 16,58,510, 2127]

let numberStringOther = numbersMore.map{ (number) -> String in
    var number = number
    var output = ""
    let minus = "minus"
    let negative = number
    number  = number < 0 ? number * -1 : number
    repeat{
        output = digitNames[number%10]! + output
        number /= 10
    }while number > 0
    
    output = negative < 0 ? minus + output : output
    
    return output
}



// - - - -  - - - -  - - - -  - - - -  - - - -  - - - -  - - - -  - - - -
//                              Capturing clousures
// - - - -  - - - -  - - - -  - - - -  - - - -  - - - -  - - - -  - - - -
//                            devolver un closure que no tomara nada de entrada y devolvera un int de salida
func maleIncrementer(forIncrementer amount : Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

let incrementeByTen = maleIncrementer(forIncrementer: 10)
incrementeByTen()
incrementeByTen()
incrementeByTen()

// - - - -  - - - -  - - - -  - - - -  - - - -  - - - -  - - - -  - - - -
//                              Escaping closure
// - - - -  - - - -  - - - -  - - - -  - - - -  - - - -  - - - -  - - - -
var completionHandlers : [() -> Void] = []

func someFunctionWithEscapingClosure (completionHandler : @escaping () -> Void){
    completionHandlers.append(completionHandler)
}

func someFunctionWithNoneEscapingClosure (closure: () -> Void){
    closure()
}



class SomeClass{
    var x = 10
    func doSomething(){
        someFunctionWithEscapingClosure{
            self.x = 100
        }
        someFunctionWithNoneEscapingClosure {
            x = 200
        }
    }
}

let instance = SomeClass()
print(instance.x)
instance.doSomething()
print(instance.x)

completionHandlers.count
completionHandlers.first?()
print(instance.x)
