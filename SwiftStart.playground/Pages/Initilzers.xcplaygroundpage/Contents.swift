//: [Previous](@previous)

import Foundation


class Student{
    var name:String = ""
    var rollNo:Int = 0
}
let s1 = Student()
//1. Default Initializer

//2 Memberwise Initializer/Default Initializer- (Only for Struct)
struct Employee{
    var empId:Int
    var salary:Double
}
let employee = Employee(empId: 101, salary: 10001)


//3.Custom Initializer
class Animal{
    var numberOfLegs:Int
    
    init(numberOfLegs: Int) {
        self.numberOfLegs = numberOfLegs
    }
    
    func eat(){
        
    }
}


//4. Failable Initializer
class Subject{
    var subjectName:String
    var compulsoryTopics:Int
    
    init?(subjectName:String,compulsoryTopics:Int){
        if compulsoryTopics < 5{
            return nil
        }
        self.compulsoryTopics = compulsoryTopics
        self.subjectName = subjectName
    }
}
let maths = Subject(subjectName: "Maths", compulsoryTopics: 10)
let physics = Subject(subjectName: "Physics", compulsoryTopics: 4)

//5. Required Initializer
class Teacher{
    var name:String
    var numberOfSubjects:Int
    
    init(name: String, numberOfSubjects: Int) {
        self.name = name
        self.numberOfSubjects = numberOfSubjects
    }
}

class SportsTeacher:Teacher{
    var favSportName:String
    
     init(favSportName: String,name: String, numberOfSubjects: Int) {
        self.favSportName = favSportName
        super.init(name: name, numberOfSubjects: numberOfSubjects)
     }
    
    required init(name: String, numberOfSubjects: Int,favSportName: String) {
        self.favSportName = favSportName
        super.init(name: name, numberOfSubjects: numberOfSubjects)
    }
    required override init(name: String, numberOfSubjects: Int) {
        fatalError("favSportName not provided")
    }
    
    required init(name: String) {
        fatalError("All the properties of class need to be Initialized, so use another init ")
    }
}
let st = SportsTeacher(favSportName: "Basketball", name: "Sam", numberOfSubjects: 5)
///let s2 = SportsTeacher(name: "John", numberOfSubjects: 7)

//6.Convience Initializer
class Language{
    var name:String
    var numberOfYears:Int
    
    init(name: String, numberOfYears: Int) {
        self.name = name
        self.numberOfYears = numberOfYears
    }
    
    convenience init(name: String) {
        self.init(name: name, numberOfYears: 0)
    }
}

let englishLanguage = Language(name: "English", numberOfYears: 200)
let sanskritLanguage = Language(name: "Sanskrit")
