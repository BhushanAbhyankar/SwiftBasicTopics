//: [Previous](@previous)

import Foundation

var name:String = "SwiftUI"
print(name)

//optional
var languageName:String? // there can be a value or it can be nil
languageName = "Swift"
print(languageName)

//Optional is Enum behind the scene
// 2 cases
// .some(value)
//.none

/*
enum MyOptional<T>{
    case .some(T)
    case .none
}
*/



//optional binding-//basically taking values safetly out of optionals is optional binding
/*
 1.if let
 2.guard let
 3. Nil colescing operator
 4.Force unwrapping
 */

///if let
var number:Int?
//number = 25
print(number )
if let num = number{
    print(num)
    print("inside if let")
}

if number != nil {
    print("number is not ni")
    print(number)
}

//guard let
func doSomeCalculation(value:Int?){
    guard let val = value else {
        return
        print("In else condition")
    }
    print(val*val)
}

doSomeCalculation(value: nil)
print("End of code ")

print(number ?? 2) //Nil colescing operator

let age = 5
let val = age > 18 ? true : false // ternary opeator
print(val)


var kind:String? = "abc"
var result = kind ?? "default value"
//print(result)


//4, Force Unwraping
print(kind!)


var direction:String? = "right"
print(direction!)


//Implicit Unwrapped Optionals
var radius:Double! = 1.23
print(radius)


var side:Int = 10
var side1:Int? = 2
var side2:Int! = 4


//optional channing


class Pet{
    var petName:String
    
    init(petName: String) {
        self.petName = petName
    }
}

class Person{
    var name:String
    var pet:Pet?
    
    init(name: String, pet: Pet? = nil) {
        self.name = name
        self.pet = pet
    }
}

let p1:Person? = Person(name: "Adam")
p1?.name
p1?.pet
p1?.pet?.petName = "scooby"

let mini = Pet(petName: "mini")
p1?.pet = mini
p1?.pet?.petName
mini.petName
