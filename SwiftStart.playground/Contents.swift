import UIKit

//- single line comment


//String name = String("dsjbf")

var name = "Swift"
print(name)
/*
 Multi line commnet
 
 Data types:
 boolen/ Bool
 double
 float
 Int
 String
 char
 Int32
 Int64
 
 Array
 
 OOP= Object Oriented Programing
 1.Abstraction-
 2.Encapsulation
 3.Polymorphism
 4.Inhertiance

 
 */
class A{
    
}
class B:A{
    
}
//multiple inheritance is now allowed in swift
class C:B{
    
}

//variable in swift
//var area = 100
//var age = 20
//print(age)
//age = 30
//print(age)

//constant
let address = "NYC"
print(address)
//address = "jfhgjhdfk" Cannot assign to value: 'address' is a 'let' constant
/*
 Data types:
 String
 boolen/ Bool
 double
 float
 Int
 
 char
 Int32
 Int64
 */
//1.String
var course:String = "iOS"
var ui = "swiftui" //type infernce
let data = "30"

let dataAsNum = Int(data)

//2.Int
let age = 10
let parameter:Int = 1

//double
var radius = 1.2
let circumference:Double = 63.44
let stringRaduis = String(radius)


//4 float
var diameter = 500.2
var side:Float = 23.4
//diameter = "size"

var isValid:Bool = true
let isCorrect = false

var someCharacter = "ABC"
var randomCharacter:Character = "x"
randomCharacter = "z"

//someCharacter = 123 //type safety



var something = "running \(radius)"
print("diameter is = \(diameter) one")
