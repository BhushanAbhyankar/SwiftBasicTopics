//: [Previous](@previous)

import Foundation

//1 if Statement

let temp = 4

if temp > 25{
    print("Its hot day")
}

//2. if else
//if temp > 25{
//    print("Its hot day")
//}else{
//    print("Its normal day")
//}

///3
if temp > 25{
    print("Its hot day")
}else if temp < 5 {
    print("Its cold day")
}else if temp == 15 {
    print("Its moderate day")
}else{
    print("Its normal day")
}

//guard statement
func checkAge(_ age: Int){
    guard age >= 18 else{
        print("Its minor")
        return
    }
    print("Senior")
}
checkAge(30)

//Switch statement

//func abc(){
    let letter = "n"

    switch letter {
    case "a":
        print("The letter is a")
    case "b":
        print("The letter is b")
    default:
        print("The letter is something else")
    }

    
//}

//abc()
