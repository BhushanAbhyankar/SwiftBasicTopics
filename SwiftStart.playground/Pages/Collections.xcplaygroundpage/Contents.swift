//: [Previous](@previous)

import Foundation

//collection
//1.Array
//2.Set
//3.Dictionary

//1.Array
let numbers:[Int] = [1,2,3,4,5,6,7,7,7]
print(numbers)
print(numbers.last)
print(numbers.first)

let charchters = ["a","b","c"]
print(charchters[1])

var mixArray:[Any] = ["A", 1, 12.4, true]
print(mixArray)
mixArray.append("xyz")
print(mixArray)

let emptyArr = [Int]()

//Set
var studentIds : Set = [100,101,102,103,103,103]
print(studentIds)


var empTags:Set<String> = ["a1","b1","c1","a1"]
print(empTags)
empTags.insert("d1")
print(empTags)

empTags.remove("c1")
print("empTags = \(empTags)")

var students:Set<String> = [ "b1", "a1", "e1","z1"]
print("students = \(students)")

let unionColection = empTags.union(students)
print(unionColection)

let commonelements = empTags.intersection(students)
print(commonelements)


var emptySet = Set<Int>()
emptySet.insert(12)

//Dictonary= collection of Key value pairs

var myDictionary:[String:Int] = ["Adam":1,"Bob": 2,"Sam": 20]
print(myDictionary)
print(myDictionary["Bob"])
myDictionary["Bob"] = 4
print(myDictionary)
myDictionary.removeValue(forKey: "Sam")
myDictionary["Bob"] = nil
print(myDictionary)
