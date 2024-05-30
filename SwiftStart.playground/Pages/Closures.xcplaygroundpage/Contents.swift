//: [Previous](@previous)

import Foundation
//
//// closure = () -> ()
////closure()
///*
// closure= Closure is unnamed block of code which you can assign to a vaiable or you can pass as a paramter to a function, or you can return from that function as well.
// */
//func sayHello(){
//    print("sayHello")
//}
//sayHello()
//
//let sayHelloClosure = {
//    print("sayHelloClosure")
//}
//sayHelloClosure()
//
//func makeSqaureOfNum(num: Int, completion: (Int)->()){
//    let square = num * num
//    completion(square)
//    
//}
//
//makeSqaureOfNum(num: 5, completion: { result in print("value of squares is \(result)")})
//
//
///*
// Types of closures
// 1. non escaping closure (default)
// 2. escaping closure
// 3. Traling Closure
// 4. Autoclosure
// */
//
////1. non escaping closure (default)
//func nonEscapingClosureExample(onCompletion: () -> Void){
//    onCompletion() // print("Inside nonEscapingClosure Example")
//    print("non escaping func end")
//}
//
//nonEscapingClosureExample(onCompletion: { print("Inside nonEscapingClosure Example")})
//nonEscapingClosureExample {
//    print("\n")
//}
//print("\n")
//
////2. escaping closure
//func escapingClosureExample(url:String, onCompletion: @escaping () -> Void){
//    DispatchQueue.main.asyncAfter(deadline: .now() + 1){
//        onCompletion()
//    }
//    print("escaping func end")
//}
//escapingClosureExample(url: "http://example.com", onCompletion: { print("Inside escapingClosureExample Example")})
//
//
//// 3. Traling Closure- when closure is last parameter to a func, then its called as trailling closure
//func doAddition(num1:Int, num2: Int, onSucess closure:(Int) -> Void){
//    closure(num1 + num2)
//}
//
//doAddition(num1: 2, num2:10) { output in
//    print(output)
//}
//
//// 4. Autoclosure- so when a closure gets automatically wrapped in a closure, and which doesn't accept any parameter nor it return something, then its called as autoclosure
//// higher order functions, map,filter,reduce
//func greatPeople(wishThem:() -> Void){
//   print("Good Morning")
//    wishThem()
//}
//
//greatPeople {
//    print("Have a nice day")
//    print("bye bye")
//}
//
////closures are refrence types- they get stored on heap memory

print("\n")
print("\n")

var name:String = "swift"
let clsouresss = { [name] in
    print(name)
}
clsouresss()


name = "Objective C"
clsouresss()

//class Person{
//    var name:String
//    var counter: Int = 0
//    
//    init(name: String) {
//        self.name = name
//    }
//    
//    func displayName(completion:()->()){
//        self.counter = 1
//        let someClosure = { [counter] in
//            print(self.counter)
//        }
//        someClosure()
//    }

//}
//var p1:Person? = Person(name: "Sam")
//p1?.displayName {
//    print("Printing name")
//}
//p1 =  nil
//
//p1?.name = "John"
//p1?.displayName {
//    print("Printing name")
//}

class Vehical{
    var name:String
    
    init(name: String) {
        self.name = name
    }
    
    func displayVehicalInfo(){
        let closure = { [weak self] in
            print("Vehical is \(self?.name ?? "")")
        }
        closure()
    }
}
var v:Vehical? = Vehical(name: "BMW")
v?.displayVehicalInfo()
v = nil
//ARC
