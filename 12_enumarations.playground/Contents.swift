import UIKit

// enumarados => clase vaga
// un valor posible dentro de un conjunto disponible
enum SomeEnumeration{
    // aqui iria la definicion del enumerado
    
}

enum CompassPoint{
    case nort
    case south
    case east
    case west
}

enum Planet{
    case mercurio, venus, earth, mars, jupiter, saturn, uranus, neptune
}

var directionToGo = CompassPoint.nort
directionToGo = .south



switch directionToGo {
case .east:
    print("Mordor se extien hacias las tierras del este")
case .south:
    print("Hay pinguinos en el sur")
case .nort:
    print("Hay que ir al norte")
case .west:
    print("Cuidado con los vaqueros")
}


let somePlatnet = Planet.earth
switch somePlatnet {
case .earth:
    print("LA tierra es segura")
default:
    print("No es seguro ir a este planeta")
}

enum Beverage : CaseIterable {
    case coffe, tea, juice, redbull
}


let numberOfChoise = Beverage.allCases.count
for beverage in Beverage.allCases{
    print(beverage)
}


// - - - - - - - - - - - - - - - - - - - - - - - - - - - -
//          Enumeration Codigos de barra

enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode (String)
}

var productBarcode = Barcode.upc(8, 859, 51226, 3)
productBarcode = .qrCode("sdhkgdsakjhsajhkahka")

switch productBarcode {
case let .upc ( numberSystem,  manufacturer,  product,  check):
    print("UPC \(numberSystem) , \(manufacturer), \(product), \(check)")
case .qrCode(let productCode):
    print("QR \(productCode)")
}
    
// enumeradores con raw values
enum ASCCIIControlCharacter : Character{
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
}




enum PlanetUniverse : Int{
    case mercurio = 1, venus = 2 , earth, mars, jupiter, saturn, uranus, neptune
}

let earthOrder = PlanetUniverse.earth.rawValue

let ASCCIChar = ASCCIIControlCharacter.lineFeed.rawValue

let possiblePlanet = PlanetUniverse(rawValue: 5)
let planetPosicion = 4
if let anyPlanet = PlanetUniverse(rawValue: planetPosicion){
    switch anyPlanet {
    case .earth:
        print("La tierra es segura")
    default:
        print("No es seguro ir a este planeta")
    }
}else{
    print("El planeta indicado no existe")
}
