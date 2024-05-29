//: [Previous](@previous)

import Foundation

func printMyData(){
    print("printing data")
}

printMyData();
printMyData();
printMyData();

//func which accepts a parmeter
func displayNames(name:String, pincode:Int, isValid:Bool){
    print("Name is \(name), pincode is = \(pincode) is Status Valid = \(isValid)")
}
displayNames(name: "ABC", pincode: 456789, isValid: true)

func doAdditon(_ num1:Int, _ num2:Int){
    let sum = num1 + num2
    print("Sum is= \(sum)")
}
doAdditon(2, 4)

//func which accepts and returns data

func doSqaureOfNumber(number:inout Int) {
     number =  number * number
}
var num = 5
doSqaureOfNumber(number: &num)
print(num)

//tuples- these are light weight data structure that allows us to group multiple values into single value

let myTupple:(Int,String) = (100,"A")
print(myTupple)
print(myTupple.0)
print(myTupple.1)

let person: (name:String, age:Int, isEmployed:Bool) = ("John", 25, true)
print(person.name)
print(person.age)
print(person.isEmployed)

func doAPiCAll(url:String) -> (String,Bool, Int){
    //logic
    return ("Sucess", true, 200)
}
let result = doAPiCAll(url: "example.com")
print(result)

