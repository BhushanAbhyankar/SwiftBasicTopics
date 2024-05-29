//: [Previous](@previous)

import Foundation

class Student{
    var name:String
    var address:String
    
    init(name: String, address: String) { 
        self.name = name
        self.address = address
        print("init method")
    }
    
     func updateTheAddrees(newAddress:String){
        self.address = newAddress
         print("method from Parent class")
    }
    
    deinit {
        //decallocating objects
        print("denit is getting called")
    }
}

var s1:Student? = Student(name: "Alex", address: "123, abc town")
s1?.name
s1?.address
s1?.updateTheAddrees(newAddress: "some street, london")
s1?.address

let s2 = Student(name: "John", address: "789, xyz town")

//classes are refrence type
//heap memory


let s3 = s2
s2.name = "Bob"
print(s2.name)
print(s3.name)


s1 = nil
s1?.name
s1?.address
s1?.updateTheAddrees(newAddress: "new address")
s1?.address

class PhysicsStudent:Student{
    var subject:String
    
    init(subject: String, name: String, address: String) {
        self.subject = subject
        super.init(name: name, address: address)
    }
    override func updateTheAddrees(newAddress:String){
        self.address = newAddress
        print("method from child class")
    }
    
}

let phyicsStudent:Student = PhysicsStudent(subject: "Thermo Dynamics", name: "p11", address: "mnb")
phyicsStudent.updateTheAddrees(newAddress: "qwerty")



/*
 Struct vs Classes
 1.Classes supports inheritance, struct doesn;t support
 2.Classes are refrence types
 3.Strcuts are value types
 4.Classes gets stored on heap memory, structs get stored on stack memory
 5.Classes share memory location, struct doesn't
 6.Structs are immutable by default
 7. Classes needs initilizers where as Structs came with buildin initizer called as memberwise initilizer
 8.Structs are faster compared to classes
 
 When to use
 1. Classes
 When u want inheritance and data sharing the go for classes
 When u want to work with refrence types
 When you want more control over intilzation process
 When u want ur code to be compatible with Objective C(interoperatbility)
 
 2.Struts
 1.By default go for structs in genral
 2.When u want to create simple value types that can be passes as a copy
 3.when u want immutability
 */

