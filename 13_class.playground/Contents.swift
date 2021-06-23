import UIKit


/**
  Un struct es una clase sin herencia, cuyo princiupal objetivo es crear una estrucutura de codigo que puede ser representana a partir de un tipo de dato por valor y no por referencia
    en cambio una clase es pas por tipo de dato por referencia
 */
struct Agenda{
    var nombre : String
    var apellidos : String
    var telefono : Int
    var email : String
    
    init(asNombre : String, asApellidos : String) {
        self.nombre = asNombre
        self.apellidos = asApellidos
        self.telefono = 0
        self.email = ""
    }
    
    init(asNombre : String, asApellidos : String, aiTelefono : Int, asEmail : String) {
        self.nombre = asNombre
        self.apellidos = asApellidos
        self.telefono = aiTelefono
        self.email = asEmail
    }
}



//let entrada1 = Agenda(nombre: "Sebastian", apellidos: "Rozo", telefono: 3166827470, email: "iscrozo@gmail.com")
let entrada1 = Agenda(asNombre: "Sebastian", asApellidos: "Rozo", aiTelefono: 3166827470, asEmail: "iscrozo@gmail.com")

var entrada2 = entrada1
entrada1.nombre
entrada1.apellidos
entrada1.telefono
entrada1.email

print(entrada1)
print(entrada2)

entrada2.nombre = "Camilo"
entrada2.apellidos = "Ruiz"
entrada2.email = "camynator@yahoo.es"
entrada2.telefono = 3175058538

print(" - - ")
print(entrada2)


print(" - - ")


protocol Mortal{
    var muerto : Bool { get }
    func muere()
}

class Personaje {
    var nombre : String
    var vida : Int
    
    init ( asNombre : String, aiVida : Int){
        self.nombre  = asNombre
        self.vida = aiVida
    }
}

class Heroe : Personaje, Mortal{
    var muerto: Bool{
        return vida <= 0
    }

    func muere() {
        print (" Animacion de muerte ")
    }

 
}


// struct vs class
// definir propiedades, metodos, subindices, inicializadores
// clase => herencia, casting, , desinicializador, reference counting

struct SomeStruct{
    // la definicion de la estructura aqui
}

class SomeClass {
    // la deficniion de la clase auqi
}

// cuando se trata de contenedores que no hagan muchas cosas, como un video
struct Resolution {
    var width = 0
    var heigth = 0
}

class VideoMode {
    // stored properties
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name : String?
}

let someResolution = Resolution()
let someVideoModel = VideoMode()

let vga = Resolution()
vga.heigth
vga.heigth


let hd = Resolution(width: 1920, heigth: 1080)

var cinema = hd
print("\(cinema.width) x \(cinema.heigth)")
cinema.width = 2048
print("\(cinema.width) x \(cinema.heigth)")
print("\(hd.width) x \(hd.heigth)")

/*
 Lazy properties => variables vagas
 */
// - - - -
class DataImporter {
    var fileName = "data.txt"
}
class DataManager {
    lazy var importer = DataImporter()
    var data = [String]()
}

let manager = DataManager()
manager.data.append("a")
manager.data.append("b")
manager
// Hasta esta linea aun no ha sido creado el importer
manager.importer.fileName
manager
