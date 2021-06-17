import UIKit

func greeting(person : String) -> String {
    let greet = "Hola , \(person)!"
    return greet
}


greeting(person: "camilo")

// parametros de entrada
func sayHelloWorld() -> String {
    return "Hello World"
}

func greeting (person: String, isMale: Bool) -> String {
    if isMale {
        return "Bievenido Caballero \(person)"
    }else{
        return "Bievenida Dama \(person)"
    }
}

greeting(person: "Daniela", isMale: false)

//valores de retorno , optionals y prametros de salida
func printAndCount(string : String)->Int{
    return string.count
}

func printWithoutCounting(lobString : String){
    let _ = printAndCount(string: lobString)
}

//
func minMax(lobArray : [Int]) -> (min : Int, max : Int)? {
    if lobArray.isEmpty { return nil}
    var currentMin = lobArray[0]
    var currentMax = lobArray[0]
    for value in lobArray[1..<lobArray.count]{
        if value < currentMin {
            currentMin = value
        }else if value > currentMax{
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

let bounds = minMax(lobArray: [4,7,32,4,8,-3,-7,19])
print("los valores se halla entre \(bounds!.min) y \(bounds!.max)")
minMax(lobArray: [])

// etiquetas de params y variadics
func sumatoria (f1 primerNumero : Int, f2 segundoNumero : Int){
    print(primerNumero + segundoNumero)
}
sumatoria(f1: 3, f2: 6)

// parametro con valor por defecto
func areaFigura (h altura: Int, b base : Int = 5 ){
    print(altura * base)
}
areaFigura(h: 4)

// variadics
func mean (numbers : Double...) -> Double{
    var total : Double = 0
    for number in numbers{
        total += number
    }
    return total / Double (numbers.count)
}


mean(numbers: 1,2,3,4,5,6,7,8,9)
mean(numbers: 4,5,2,3)
mean(numbers: 1,2,3,4,5)

//parametros tipo inout

print (". . . . . . ")


func swapTwoInts (_ a : inout Int, _ b: inout Int){
    let tempA = a
    a = b
    b = tempA
}

var someInt = 3
var otherInt = 7
print("someInt vale \(someInt) y otherInt vale \(otherInt)")
swapTwoInts(&someInt, &otherInt)
print("someInt vale \(someInt) y otherInt vale \(otherInt)")

// function types
func multiplyTwoInts(_ a : Int, _ b : Int)-> Int{
    return a * b
} // (int, int) -> Int
func addTwoInts(_ a : Int, _ b : Int) -> Int {
    return a + b
}

var mathFunction : (Int, Int) -> Int = multiplyTwoInts
mathFunction(4,5)

func printMathResult (_ mathFunction: (Int, Int)-> Int, _ a :Int, _ b: Int){
    print("REsultado \(mathFunction(a,b))")
}

printMathResult(multiplyTwoInts, 4, 3)

print("- - - - ")
// una funcion retorne una funcion
func stepForward (_ input: Int) -> Int{
    return input + 1
}
func stepBackward (_ input: Int) -> Int{
    return input - 1
}
//                                        devuelve una funcion con un int como parametro y retorna un int
func chooseStepFunction(backward : Bool) -> (Int) -> Int{
    return backward ? stepBackward :  stepForward
}
var value = 7
let moveNearerZero = chooseStepFunction(backward: value > 0)
while value != 0{
    print("\(value) ...")
    value = moveNearerZero(value)
}
print("cero!!")

// nesteed functions
// funciones anidadas

//                                        devuelve una funcion con un int como parametro y retorna un int
func chooseStepFunction1(backward : Bool) -> (Int) -> Int{
    func stepForward1 (_ input: Int) -> Int{
        return input + 1
    }
    func stepBackward1 (_ input: Int) -> Int{
        return input - 1
    }
    return backward ? stepBackward1:  stepForward1
}
// clousures
// tipo de funcion 3 contextos




