import UIKit

let names = ["Ricardo Celis", "Juan Gabriel","Edgar"]
for name in names{
    print(name)
}

for idx in 1...5{
    print("\(idx) * 3 = \(idx*3)")
}


var hour = 9
let minutes = 60
// for de recorrido de 0 - 59
for tickMark in 0..<minutes{
    print("\(hour) : \(tickMark)")
}
var minuteInterval = 5
for tickMark in stride(from: 0, to: minutes, by: minuteInterval){
    print("\(hour) : \(tickMark)")
}

print("- - - - - ")
// bucle while
var i = 0
while i<=10{
    i+=1
}
print(i)
repeat{
    i += 1
}while i <= 10
print(i)


// switch
let someCharacter : Character = "z"
switch someCharacter {
case "a", "A":
    print("1era letra del alfabeto")
case "z":
    print("Es la ultima letra del alfabeto")
default:
    print("no es la primera letra")
}

// switch usando rangos
let moons = 62
let phrase = "Lunas en Saturno"
let naturalCount : String
switch moons {
case 0:
    naturalCount = "No hay"
case 1..<5:
    naturalCount = "Hay unas pocas"
case 5..<12:
    naturalCount = "Hay bastantes"
case 12..<100:
    naturalCount = "Hay decenas de"
case 100..<1000:
    naturalCount = "Hay centenares de"
default:
    naturalCount = "Hay muchisisisisimas"
}

print("\(naturalCount) \(phrase)")

// switch usando tuplas
let somePoint = (1,1)
switch somePoint {
case (0,0):
    print("El punto de \(somePoint) origen de coordenadas")
case (_,0):
    print("El punto \(somePoint) se halla sobre el eje de las x")
case (0,_):
    print("El punto \(somePoint) se halla sobre el eje de las y")
case (-2...2, -2...2):
    print("El punto \(somePoint) se halla en el interior del cuadrado de lado 4")
default:
    print("el punto \(somePoint) esta en algun otro lado")
}

print("--------")

let anotherPoint = (2,-2)
switch anotherPoint {
case (let x , 0):
    print("Sobre el eje de las x, con valor \(x)")
case (0 , let y):
    print("Sobre el eje de las y, con valor \(y)")
case let (x,y) where x == y:
    print("El punto se halla sobre la recta x = y")
case let (x,y) where x == -y:
    print("El punto se halla sobre la recta x = -y")
case let (x,y):
    print("En algun otro lugar del plano, en (\(x),\(y))")

}


// switch con casos compuestos
let stillAnotherPoint = (0 , 4)
switch stillAnotherPoint {
case (let distance, 0),(0, let distance):
    print("Se halla sobre el eje , a distancia \(distance) del origen")
default:
    print("No esta sobre el eje")
}

// control transfer
// continue & break % fallthrough, return, throw
// contiue :> pasa a la siguiente iteración
// break :> finaliza el bucle, tambien se puede usar en e ldefault de un switch para romper el bucle

let sentence = "las mentes grandes piensan igual"
let charactersToRemove : [Character] = ["a","e","i", "o", "u"]
var filteredSentence = ""
for ch in sentence {
    if charactersToRemove.contains(ch){
        // no hacer nada
        continue // pasa a la siguiente iteracion
    }
    filteredSentence.append(ch)
    if ch == "d"{
        break // rompe la iteracion
    }
}
filteredSentence


// falltrough :> pasar hacia adelante, dentro del contexto de switch
let integerToDescribe = 5
var description = " El numero \(integerToDescribe) es"
switch integerToDescribe {
case 2,3,5,7,9,11,13,17,19:
    print(" un numero primo y")
    fallthrough
default:
    print(" un numero entero")
}
print(description)
print (" - - - ")
// guard let return
// programar de forma segura

var lobPeople  = ["name":"Juan Gabriel", "age":31, "isMale":true] as [String : Any]

func testUserValidation(person:[String : Any]){
    guard let surname = person["surname"] else {
        print("El apellido es desconocido")
        return
    }
    print(surname)
    guard let age = person["age"] else {
        print("La edad es desconocida")
        return
    }
    print("La edad de la persona es \(age)")
}

testUserValidation(person: lobPeople)


// Available en API : Manejo de versiones
// comprobar si hay algo disponible

if #available(iOS 12, macOS 10.12 , *){
    // Ejecutar las acciones a lo iOS12, a los macOS12
    
}else{
    // mantener el codigo viejo con versiones anteriores de iOS, macOS, ...
}

