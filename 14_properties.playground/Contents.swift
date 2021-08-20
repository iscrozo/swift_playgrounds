import UIKit

struct FixedLengthRange {
    var firstValue : Int
    let length : Int
}


struct Point {
    var x = 0.0, y = 0.0
}

struct Size {
    var width = 0.0, heigth = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            Point(x: origin.x + size.width/2, y: origin.y + size.heigth/2)
        }
        set { //set(newCenter){
//          origin.x = newCenter.x - size.width/2
            origin.x = newValue.x - size.width/2
            origin.y = newValue.y - size.heigth/2
        }
    }
}

var square = Rect(origin: .init(x: 0, y: 0), size: .init(width: 10, heigth: 10))

let initSquare =  square.center
square.center = Point(x: 20, y: 20)
// computed only read

struct Cuboid {
    var width = 0.0, height = 0.0, depth = 0.0
    var volume: Double {
        //get{
            return width * height * depth
        //}
    }
}


let cuboid = Cuboid(width: 4.0, height: 5.0, depth: 2)
cuboid.volume

//cuboid.volume = 60, error puesto de solo lectura


// property observers

class StepCounter {
    var totalStep: Int = 0{
        willSet(newTotalSteps){
            print("El nro de pasos a subir hasta \(newTotalSteps)")
        }
        didSet {
            if totalStep > oldValue {
                print("El nro de pasos ha incrementado en \(totalStep - oldValue)")
            }
        }
    }
    
}

let stepCounter = StepCounter()
stepCounter.totalStep = 200
stepCounter.totalStep += 15
stepCounter.totalStep = 100


// type propertie
struct SomeStruct {
    var counter = 0
    static var storedProperty = "SomeValue"
    static var computedProperty: Int {
        return 1
    }
}

let instaceStr = SomeStruct()
instaceStr.counter
SomeStruct.computedProperty


class SomeClass {
    static var storedTypeProperty = "SomeValue"
    static var computedTypePropery: Int {
        return 10
    }
    class var overrideableComputedTypeProperty: Int {
        return 20
    }
}

let someCls = SomeClass()
SomeClass.computedTypePropery
SomeClass.overrideableComputedTypeProperty

// metodos de instancia

