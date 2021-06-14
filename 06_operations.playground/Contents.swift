import UIKit

let b = 10
var a = 5
a = b


let (x,y) = (3,4)


(1, "Sebas") < (2, "Sebastian")
(2, "Sebas") < (2, "UVO")
(4, "perro" ) == (4, "perro")


(1, "a") < (2, "b")
(2, "a") < (2, "b")
(2, "a") <= (2, "a")


let DefaultAge = 18
var userAge : Int?
var ageToBeUsed = userAge ?? DefaultAge


let frutas = ["banano", "fresa", "mora", "uva"]
for i in 0..<frutas.count{
    print(frutas[i])
}
print("----")
for fruta in frutas[1...]{
    print(fruta)
}

print("- - - -")
for fruta in frutas[...]{
    print(fruta)
}

print("- * - * - * -")
for fruta in frutas{
    print(fruta)
}

let range = ...5

let range1 = 1...4
range1.contains(-5)
print(range1)

let range2 = 10...
range2.contains(1000)
range2.contains(11)
range2.contains(9)
