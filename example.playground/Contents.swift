import UIKit

class persona {
    var nombre : String = "Monica"
}

let a = persona()
print(a.nombre)
var b = a
print(b.nombre)

b.nombre = "Camilo"
print()
print(b.nombre)
print(a.nombre)

struct clase{
    var materia : String = "español"
}

let c = clase()
print(c.materia)

var d = c
d.materia = "ciencia"

print(c.materia)
print(d.materia)

 


