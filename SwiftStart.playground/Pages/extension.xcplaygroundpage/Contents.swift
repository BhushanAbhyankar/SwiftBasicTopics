//: [Previous](@previous)

import Foundation
import UIKit
/*
 Extension- extension means adding new functionality or behaviour to exsiting classes,structs or data types
 */

extension Int{
    func doSquare() -> Int{
        let square = self * self
        return square
    }
}

let number = 5
let result = number.doSquare()
print("Square of 5 = \(result)")

10.doSquare()

extension String{
    func makeItCapital() -> String{
        let capital = self.capitalized
        return capital
    }
}
print("swift is more towrds pop".makeItCapital())

class Temprature{
    var celsius = 0.0
    
    func setTemp(celsius:Double) {
        self.celsius = celsius
        print(self.celsius)
    }
 
}
let t1 = Temprature()
t1.setTemp(celsius: 20)

extension Temprature{
   // var currentValue = 0 //extensions must not contain stored properties
    
    func convertToFahrenheit() {
       // self.setTemp(celsius: 10)
        let value = (self.celsius * 1.8 ) + 32
        print(value)
    }
}
t1.convertToFahrenheit()

protocol Brake{
    func applyingBreaks()
}
extension Brake{
    func applyingBreaks(){
        print("applying Breaks")
    }
}
class ListViewController{
    
}
extension ListViewController:UITableViewDelegate{
    
}
extension ListViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 2
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        return UITableViewCell()
    }
}
