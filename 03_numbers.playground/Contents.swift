import UIKit

// numero entero
 
typealias  i8 = UInt8
let age : i8 = 16
//ó
let age1 : UInt8 = 16



let minValue = UInt8.min
let maxValue = UInt8.max

print(minValue)


let f1 : Float  = 3.14159265
let f2 = 4  + 3.4

// enteros literales
let decimalInteger = 17         // 1 * 10 +7
let binaryInteger = 0b10001     // 10001 binario
let octalInteger = 0o21         // octal
let hexadecimalInteger = 0x11   // hexadecimal

let deckimalDouble = 12.1875
let exponenteDouble = 1.21875e1
let hexadeimalDouble = 0xC.3p0


let paddedDouble =  000123.456
let someNumber =    000097.54
let oneMillion = 1_000_000

let justMoreThanMillion = 1_000_000.000_000_001

//let cannotBeNegative = UInt8 = 1


let suma = 0b01 + 0b10

//tipo de dato casting a clase mas alta, convervando la info completa (subir nivel)
let twoThousands : UInt16 = 2_000
let one : UInt8 = 1

let twoThousandsAndOne = twoThousands + UInt16(one)

let three = 3
let data1  = 0.14159
let suman1 = Double(three) + data1

// tipo de dato , perdiendo la info completa (bajar nivel )
let integerPi = Int(data1)


let numero : i8 = 255
let n1 : i8 = i8.max

