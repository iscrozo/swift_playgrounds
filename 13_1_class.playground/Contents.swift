import UIKit

class Person{
    var firstName : String?
    var lastName : String?
    var gender = "Female"
    init(asGender : String) {
        self.gender = asGender
    }
    
    
}


let Person1 = Person(asGender: "Male")
Person1.firstName = "Sebastian"
Person1.lastName = "Rozo"
print(Person1.firstName)
print(Person1.gender)


class Student : Person{
    var school : String?
}
let student1 = Student(asGender: "Male")

// ocupan el mismo espacio de memoria
class PointA {
    var x : Int
    var y : Int
    init(aiX : Int, aiY : Int) {
        self.x = aiX
        self.y = aiY
    }
}

var pointA1 = PointA(aiX: 0, aiY: 0)
var pointA2 = pointA1

pointA1.x = 10
print(pointA1.x)
print(pointA2.x)
print("- - - - - - -")

// En camibio, aqui cada espacio es independiente
struct PointB {
    var x : Int
    var y : Int
    init(aiX : Int, aiY : Int) {
        self.x = aiX
        self.y = aiY
    }
}
var pointB1 = PointB(aiX: 0, aiY: 0)
var pointB2 = pointB1

pointB1.x = 10
print(pointB1.x)
print(pointB2.x)

// - - - - - - -
protocol SomeProtocol {
    var mustBeSettabgle : Int { get set }
    var doesNotNeedToBeSettable : Int { get }
}

protocol SomeOtherProtocol {
    static var someTypeProperty : Int { get set }
}

protocol Shippeable {
    var street: String { get }
    var city: String { get }
    var zip: String { get }
}

struct Product: Shippeable {
    var id: String
    var name: String
    var street: String
    var city: String
    var zip: String
}

let product = Product(id: "1",
                      name: "Mobile",
                      street: "Paseo Centro",
                      city: "SwiftBetaLandia",
                      zip: "0000")
