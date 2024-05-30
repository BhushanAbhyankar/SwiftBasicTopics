//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"


struct Emp{
    var name:String //variable stored Properties
    let gender:String // constant stored property
    
    var age:Int{ // computed property
        print("Calculating age")
        return 50 - 10
    }
    
    //lazy property
    lazy var salary:Double = {
        print("Calculating Salary")
        return 100000 / Double(age)
    }()
    
}

var p1 = Emp(name: "Bob", gender: "Male")
print(p1.name)
print(p1.gender)
print(p1.age)

print(p1.salary)

print(p1.age)

print(p1.salary)

struct Constants{
    //static property
    static let empId = 1001
    static let address = "198.121.111.156"
    static let baseURl = "http://example.com"
    static let endpoint1 = "/api/users"
}
print(Constants.empId)
print(Constants.baseURl)

class Teacher{
    class var subject:String{
        return "Phyics"
    }
    
    static var numberOfSubs : Int {
        return 10
    }
}
class MathsTeacher:Teacher{
    override class var subject: String{
        return "Maths"
    }
    
//    override static var numberOfSubs : Int {
//        return 5
//    }
}
print(Teacher.subject)
print(MathsTeacher.subject)
print(Teacher.numberOfSubs)
print(MathsTeacher.numberOfSubs)
