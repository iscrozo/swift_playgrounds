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
w
