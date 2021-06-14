import UIKit

let names = ["Ricardo Celis", "Juan Gabriel","Edgar"]
for name in names{
    print(name)
}

for idx in 1...5{
    print("\(idx) * 3 = \(idx*3)")
}


var hour = 9
let minutes = 60
// for de recorrido de 0 - 59
for tickMark in 0..<minutes{
    print("\(hour) : \(tickMark)")
}
var minuteInterval = 5
for tickMark in stride(from: 0, to: minutes, by: minuteInterval){
    print("\(hour) : \(tickMark)")
}



