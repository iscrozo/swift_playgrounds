import UIKit

//---------------//---------------//---------------//---------------//---------------
                                // arrays
//---------------//---------------//---------------//---------------//---------------

// array vacio
var someInts = [Int]()
someInts.count
someInts.append(16)
someInts.count
// resetear el array
someInts = []

//--- Formas de crear arrays    --------------
var someDoubles = Array(repeating: 3.14, count: 5)
someDoubles.count

var moreDoubles = Array(repeating: 2.4, count: 3)
moreDoubles.count

var aLotOfDoubles = someDoubles + moreDoubles

var shoppingList  : [String] = ["papas", "pigmiento", "tortillas", "cebolla", "cerdo"]

shoppingList.count

if shoppingList.isEmpty {
    print("La lista de la compra esta vacia")
}else{
    print("Mandemos a Ricardo a comprar")
}


// Acceder y modificar elementos de un array

shoppingList.append("Coca Cola") // añadir elemento
shoppingList.count

shoppingList += ["Aguacate"] // añadir elemento
shoppingList.count

var firstElement = shoppingList[0] // trae la primera posicion

shoppingList[0] = "huevos" // se modificar el valor de la posicion 1

shoppingList[4...6]
shoppingList
shoppingList[2...3] = ["naranja", "ajo"]
shoppingList

let pepper = shoppingList.remove(at: 1) // se elimina el registro
shoppingList


let _ = shoppingList.removeLast() // eliminar el ultimo elemento
shoppingList

//---------------
// iterando arrays
//---------------
//for item in shoppingList{
//    print(item)
//}

for (idx, item) in shoppingList.enumerated(){
    print("item \(idx + 1 ) : \(item)")
}
//---------------//---------------//---------------//---------------//---------------
                                    // conjuntos
//---------------//---------------//---------------//---------------//---------------

// forma mas basica de almacenar datos
// no tiene elementos duplicados

//conjunto (set)
var letters = Set<Character>() // conjunto vacio
letters.count
letters.insert("a")
letters
letters.insert("h")
letters
letters.insert("b")
letters

var favoriteGames : Set<String> = ["Final Fantasy","World of Warcraft", "Fortnite", "fracry"]
favoriteGames.count
var favoritMovies = Set<String>()

if favoritMovies.isEmpty{
    print("no hay juegos favoritos")
}else{
    favoriteGames.insert("TF")
}

if let removeGames = favoriteGames.remove("Fortnite"){
    print("He eliminado el juego \(removeGames)")
}

// xistencia
if favoriteGames.contains("Metal Gear"){
    print(" si tiene el juego")
}else{
    favoriteGames.insert("Transformers")
    favoriteGames.insert("Metal Gear")
    favoriteGames.insert("Final Fantasy")
    print(favoriteGames)
}

for vg in favoriteGames.sorted(){
    print(vg)
}

// operaciones en conjuntos, union, intercesion,

let oddDigits : Set = [1,3,5,7,9]
let evenDigits : Set = [0,2,4,6,8]
let primeNumbers : Set = [2,3,5,7]

// A union B = elementos que osmn o bien de A, o bien de B o de los dos
oddDigits.union(evenDigits).sorted()

// A intercencion B
oddDigits.intersection(evenDigits).sorted()

evenDigits.intersection(primeNumbers).sorted()
oddDigits.intersection(primeNumbers).sorted()

// diferencia de conjuntos = A-B = ele,entos que son de A pero no de B
oddDigits.subtracting(primeNumbers).sorted()

// diferencia simetrica
// A + B = (A-B)UNION(B-A)
oddDigits.symmetricDifference(primeNumbers).sorted()

// - - - - -
let houseAnimals: Set = ["🐶", "😹"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "😹"]
let cityAnimals: Set = ["🐁", "🕊"]

houseAnimals.isSubset(of: farmAnimals) // animalesHouse es subcojunto de farmanimals
farmAnimals.isSuperset(of: houseAnimals) // animales de granja es supero conjuntode houseAnimals
// A y B son disjuntos si su interseccion es vacia
cityAnimals.isDisjoint(with: farmAnimals)


//---------------//---------------//---------------//---------------//---------------
                                    // diccionarios
//---------------//---------------//---------------//---------------//---------------

// no tenemos posicion
// acceder por clave
// calve : valor

// diccionario [k1:v1, k2:v2]
var nameOfIntegers = [Int: String]() // dicionario totalmente vacio
nameOfIntegers[15] = "quince"
nameOfIntegers[13] = "trece"
nameOfIntegers = [:] // resetear

var airports: [String : String] = ["YYZ":"Toronto",
                                   "DUB":"Dublin",
                                   "PMI":"Palma de Mallorca"]

airports.count
airports["LHR"] = "London City Airport"
airports["LHR"] = "London Heathrow"

if let oldValiue = airports.updateValue("Dublin Airport", forKey: "DUB"){
    print("El aeropuerto tenia antiguamente el nombre de \(oldValiue)")
}

if let airportName = airports["DUB"]{
    print ("El aeropierto de DUB es \(airportName)")
}

// eliminas con
airports["PMI"] = nil
// o con
airports.removeValue(forKey: "DUB")


airports

for (key, value) in airports {
    print("\(key) - \(value)")
}

// para imprimir key del diccionario
for keyAir in airports.keys{
    print(keyAir)
}

// para imprimir valor del diccionario
for valueAir in airports.values{
    print(valueAir)
}
// para convertir un array de keys
let airportKeys = [String](airports.keys)
let airportValues = [String](airports.values)



