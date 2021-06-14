import UIKit

let orangesAreOrange = true
let foodIsDelicious = false
let dataValidate :Bool = false


if orangesAreOrange {
    print (" si es naranja")
}else{
    print("no es naranja")
}


//tuplas

let http404 = (404, "Page not found")
let (statusCode, statusMessage) = http404

print ("el codigo es \(statusCode) y el mensaje es \(statusMessage)")

let (justStatusCode, _) = http404
print(justStatusCode)

print(http404.1)

let http200Status = (statusCode: 200, description:"ok")
print(http200Status.statusCode)



// optionals y nil

let possibleAge = "31"
let converteAge = UInt8(possibleAge) // Int?
var serverResponseCode : Int? = 404

serverResponseCode = nil
/*
//var age : Int?
//if age! > 18{
//
//}else{
//
//}
//
 */

//if converteAge != nil{
//    print ("La edad del usuario no es nula \(converteAge)")
//}else{
//    print ("La edad del usuario es nula")
//}


//var surveyAnswer  : String?
//surveyAnswer = "2"
//if let actualAnswer = surveyAnswer,
//   var  num1  = Int("3"){
//    print("\(actualAnswer) , \(num1) es distinto a nil")
//}else{
//    print(" es nil")
//}


