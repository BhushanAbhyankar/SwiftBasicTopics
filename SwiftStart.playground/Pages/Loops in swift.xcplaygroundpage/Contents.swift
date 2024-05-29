//: [Previous](@previous)

import Foundation

let nums = [1,2,3,4,5,6]

for value in nums{
  //  print(value)
}

for element in 1..<10{
   // print(element)
}

for (index, element) in nums.enumerated(){
   // print("index = \(index), element = \(element)")
}

for val in 0...nums.count{
  //  print(val)
    for element in 1..<10{
       // print(element)
    }
}

let dictionary = ["a":1, "b":2, "c":4]
for (key, val) in dictionary{
    print("key = \(key), val = \(val)")
}


//while loop

var j = 0
while(j < 10){
  //  print(j)
    j += 1
    //j = j + 1
}

// Repeat while loop
var k = 10
repeat{
    print(k)
     k += 1
}while k < 5


