//: [Previous](@previous)

import Foundation
//value type
//stack memory
struct People{
    var name:String
    var age:Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
   mutating func updateAge(newAge:Int){
        self.age = newAge
    }
}

var s1 = People(name: "Swift", age: 10)

s1.age
s1.name

s1.updateAge(newAge: 25)

var s2 = s1

s1.name = "Objective C"
