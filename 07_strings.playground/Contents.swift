import UIKit

var greeting = "Hello, playground"


var mulitString = """
Hola
sr tal
esto es una ley
"""


var wiseWords = "\" cita bb \" "




let flagColombia : String = "\u{1F1E8}\u{1F1F4}"
print ("I'm from \(flagColombia) ")

let emptyString = String(2)

if ( emptyString.isEmpty ){
    
}


let exclamationChart : Character = "!"
let multipleNumnber = 3


var messageNew = "La operacion entre \(multipleNumnber) * 4.5 es \(Double(multipleNumnber) * 4.5)"

messageNew.append(String(exclamationChart))


var chName : [Character] = ["S", "e","b","a","s"]
var nameFull = String(chName)
var chLastName : [Character] = ["R","o","z","o"]
nameFull.append(" "+String(chLastName))



let name = "Sebastian"

name[name.startIndex]

//print(name )//
//print(name.endIndex)


let collection = [
"Act 1 Scene 1","Act 1 Scene 2","Act 1 Scene 3","Act 1 Scene 4","Act 1 Scene 5",
    "Act 2 Scene 1","Act 2 Scene 2","Act 2 Scene 3","Act 2 Scene 4",
    "Act 3 Scene 1","Act 3 Scene 2","Act 3 Scene 3","Act 3 Scene 4"
]
var countData = 0
for value in collection{
    if (value.hasSuffix("Act 1")){
//        print("\(value)")
        countData += 1
    }
}
print("La cantidad es \(countData)")

