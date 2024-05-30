//: [Previous](@previous)

import Foundation

/*
 Protocol- It is blueprint for set of functions or variables. Protocol when confirmed on class, struct, enum, we need to provide implematation for it
 (Interface in Java)
 //functions
//computed properties
 protocols doesn't have there own memory storage
 */
protocol MyProtocol{
    //functions
    func doSomeTask()
    
    //computed properties
    var name:String { get set }
}

protocol Driving{
    //property
    var speed:Double {get }
    
    //functions
    func applyBreaks()
    mutating func aclerateWith(_ speed:Double)
}

class Vehical:Driving{
    var speed: Double = 0
    
    func applyBreaks() {
        print("applying Breaks on Vehical")
    }
    
    func aclerateWith(_ speed: Double) {
        self.speed += speed
        print("aclerateWith Vehical by speed \(self.speed)")
    }
}
let v1 = Vehical()
v1.applyBreaks()
v1.aclerateWith(10)
v1.aclerateWith(20)

struct Truck:Driving{
    
    var speed: Double = 0
    
    func applyBreaks() {
        print("applying Breaks on Truck")
    }
    
    mutating func aclerateWith(_ speed: Double) {
        self.speed += speed
        print("aclerate Truck With by speed \(self.speed)")
    }
}

protocol Running:Driving{ // protocol inheritance
    func isVehicalRunnig() -> Bool
}
protocol Servicing{
    func doRepair()
}

extension Servicing{
    func doRepair(){
        print("Doing a repair work")
    }
    var speed: Double{
        return 0
    }
}

typealias Operting =  Servicing & Running // protocol composition

class Car:Operting{
    
    func applyBreaks() {
        
    }
    func aclerateWith(_ speed: Double) {
        
    }
    func isVehicalRunnig() -> Bool {
        return false
    }
    func doRepair(){
        print("Doing a speical repair work for car")
    }
}
let c1 = Car()
c1.doRepair()

struct Bike:Driving,Running,Servicing{
    
    func applyBreaks() {
        
    }
    
    mutating func aclerateWith(_ speed: Double) {
        
    }
    
    func isVehicalRunnig() -> Bool {
        return true
    }
}

let bike = Bike()
bike.doRepair()
