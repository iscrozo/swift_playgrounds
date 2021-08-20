import UIKit

// instance methods
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

// mutating methods

struct SomePoint {
    var x = 0.0, y = 0.0
    
    mutating func move(x deltaX: Double, y deltaY: Double){
        self.x += deltaX
        self.y += deltaY
    }
}

var somePoint = SomePoint(x: 2, y: 4)
somePoint.move(x: 2, y: 3)

// metodos de clase

struct LevelTracker {
    static var hightestUnlockedLevel = 1
    var currentLevel = 1
    
    static func unlock(_ level: Int) {
        if level > hightestUnlockedLevel {
            hightestUnlockedLevel = level
        }
    }
    
    static func isUnlocked(_ level: Int) -> Bool {
        return level <= hightestUnlockedLevel
    }
    
    mutating func advance (to level: Int) -> Bool {
        if LevelTracker.isUnlocked(level) {
            currentLevel = level
            return true
        } else {
            return false
        }
    }
}

class Player {
    var tracker = LevelTracker()
    let playerName: String
    func complete(level: Int) {
        LevelTracker.unlock(level + 1) // metoodo estatico
        tracker.advance(to: level + 1) // objeto tracker para invocar advance
    }
    
    init(name: String) {
        self.playerName = name
    }
}

var player = Player(name: "Sebastian Camilo")
player.complete(level: 1)
if player.tracker.advance(to: 7) {
    print("Si")
}else {
    print("no")
}

