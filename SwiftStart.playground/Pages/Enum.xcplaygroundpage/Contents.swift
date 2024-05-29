//: [Previous](@previous)

import Foundation

//enum- group of related data types, value types

enum Direction{
    case up
    case down
    case left
    case right
}
let leftDirection = Direction.left
print(leftDirection)
print(Direction.down)
print("\n")

enum RainBowColor:CaseIterable{
    case voilet,indigo, green,blue,yellow, orange,red
}
//print(RainBowColor.Indigo)

for color in RainBowColor.allCases{
    print(color)
}
print("\n")
// 2 types of enum
//1. RawValue enum
//2.AssocoiatedType Enum

//1. RawValue enum
enum CarBrand:String{
    case Honda = "Known for its build Quality"
    case Tesla = "Electric Vehical"
    case Mercedes = "Known for Luxury cars"
}
print(CarBrand.Mercedes.rawValue)
print(CarBrand.Honda.rawValue)

//2.AssocoiatedType Enum
enum CarPrice{
    case highEnd(price:Int)
    case midEnd(price:Double)
    case lowEnd(message:String)
    case midHighEnd
}

func getCarPrices(for modelType:CarPrice){
    switch modelType{
    case .highEnd(let price):
        print("This is High End car with Price \(price)")
    case .midEnd(let price):
        print("This is midEnd car with Price \(price)")
    case .lowEnd(let message):
        print("Want a car but \(message)")
    default:
        print("")
    }
}
getCarPrices(for: .highEnd(price: 100000))
getCarPrices(for: .midEnd(price: 50000))
getCarPrices(for: .lowEnd(message: "Low Budget"))

enum WeekDay:Int{
    case Monday = 100
    case Tuesday
    case Wednesday
    case Thursday = 2000
    case Friday
    case Saturday
    case Sunday
    
  //  var numberOfDays: Int // enums must not contain stored properties
    
    var dayType:String{
        self == .Saturday ? "Weekend" : "Weekdays"
    }
    
    func isItHoliday() -> Bool{
       // self.dayType = "any day"
        return self == .Sunday ? true : false
    }
}
print("\n")

print(WeekDay.Monday.rawValue)
print(WeekDay.Tuesday.rawValue)
print(WeekDay.Wednesday.rawValue)
print(WeekDay.Thursday.rawValue)
print(WeekDay.Friday.rawValue)
print(WeekDay.Sunday.dayType)
print(WeekDay.Saturday.dayType)

print(WeekDay.Sunday.isItHoliday())

enum CustomButton{
    case roundCorner
    case sqaure
    case iconButton
}

enum NetworkError:Error{
    case dataNotFound
    case invalidURLError
    case invalidResponse(statusCode:Int)
    case none
}
