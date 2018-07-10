//Tuples

//They are super light-weight structs that have no methods or properties. Just include some values inside
//Just like structs in C

import UIKit

let tupleX: (String, Int, Double) = ("I am tuple", 1, 1.25)
let (sentence, number, value) = tupleX //name tuple elements when accessing the tuple

print("\(sentence) number \(number), value: \(value)")

//name tuple elements when the tuple is declared
let tupleY: (height:Double, weight:String, age:Int) = (1.69, "54 kg", 30)
print(tupleY.height)
print(tupleY.age)
print(tupleY.weight)

//It can returns multiple values
func getInfo() -> (height:Double, weight:String, age:Int){
    return (1.75, "62 kg", 29)
}

let person = getInfo()
print(person)
