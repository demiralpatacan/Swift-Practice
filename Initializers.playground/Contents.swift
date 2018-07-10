//Initializers

import UIKit

var str = "Hello, playground"

struct Student {
    var studentNumber: Int?
    var studentName: String
    var studentSurname: String
    
    //Check optional value
    func displayInfo() -> String {
        return "Student Number: \(studentNumber ?? 0), Name: \(studentName) \(studentSurname)"
    }
}
//Create a student instance
let st0 = Student(studentNumber: nil, studentName: "Jason", studentSurname: "Statham")
let st1 = Student(studentNumber: 12345, studentName: "Anakin", studentSurname: "SkyWalker")
st0.displayInfo()
st1.displayInfo()

class Teacher {
    var teacherNumber: Int
    var teacherName: String
    var teacherSurname: String
    
    //if all properties are initialized before use, then this initializer works
    init(){
        teacherNumber = 0
        teacherName = ""
        teacherSurname = ""
    }
    
    init(teacherNumber:Int, teacherName:String, teacherSurname:String){
        self.teacherNumber = teacherNumber
        self.teacherName = teacherName
        self.teacherSurname = teacherSurname
    }
    
    //This initializer exist for convenience
    convenience init(customNumber: Int){
        self.init()
        teacherNumber = customNumber
    }
    
    func displayInfo() -> String{
        return "Teacher Number: \(teacherNumber), Name: \(teacherName) \(teacherSurname)"
    }
}

let te0 = Teacher()
te0.displayInfo()
let te1 = Teacher(teacherNumber: 9999, teacherName: "Ben", teacherSurname: "Kenobi")
te1.displayInfo()
let te2 = Teacher(customNumber: 5555)
te2.displayInfo()
