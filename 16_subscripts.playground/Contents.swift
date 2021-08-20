import UIKit
 
struct TimesTable {
    let multiplier: Int
    
    subscript(index: Int) -> Int {
        return multiplier * index
    }
}

let threeTimesTables = TimesTable(multiplier: 3)
print("6x3 = \(threeTimesTables[6])")

enum Planet: Int {
    case mercurio = 1, venus, tierra, marte, jupiter, saturno, urano, neptuno
    static subscript(n: Int) -> Planet {
        return Planet.init(rawValue: n)!
    }
}


let planetJupiter = Planet[5]
