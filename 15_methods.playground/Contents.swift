import UIKit

class Counter {
    var count = 0
    
    func increment() {
        self.count += 1
    }
    
    func increment(by amount:Int) {
        self.count += amount
    }
    
    func reset() {
        self.count = 0
    }
}


let counter = Counter()
counter.increment()
counter.increment(by: 8)



struct SomePoint {
    var x = 0.0, y = 0.0
    
    mutating func move(x deltaX: Double, y deltaY: Double){
        self.x += deltaX
        self.y += deltaY
    }
}

var somePoint = SomePoint(x: 2, y: 4)
somePoint.move(x: 2, y: 3)
