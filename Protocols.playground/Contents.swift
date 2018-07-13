// Protocols

//Protocol is a "type" just like class, struct..
//View-Controller blind communication can be done by protocols

import UIKit

var str = "Hello, playground"

//1. Declaration Part
protocol ExampleProtocol : InheritedProtocol1, InheritedProtocol2 {
// If you want to implement ExampleProtocol, you must implement Inherited protocols too
    var someProperty: Int { get set }
    func aMethod(arg1: Double, arg2: String) -> SomeType
    mutating func changeIt()
    init(arg: Type)
}
//No implementation, only declarations exist
//You must specify whether a property is get only or both get & set

//2. Claiming Part
class SomeClass: SuperclassofSomeClass, ExampleProtocol, AnotherProtocol {
    //implementation of SomeClass here
    //which must include all the properties and methods in ExampleProtocol and AnotherProtocol
    required init(arg: Type) {
        //In a class, inits must be marked as required, otherwise a subclass might not conform
    }
}

//Example
protocol Moveable {
    mutating func move(to point: CGPoint)
}

class Car: Moveable {
    func move(to point: CGPoint) {
    }
    func changeOil()
}

struct Shape: Moveable {
    mutating func move(to point: CGPoint) {
    }
    func draw()
}

let prius: Car = Car()
let square: Shape = Shape()

var thingToMove: Moveable = prius
thingToMove.move(to: <#T##CGPoint#>)
//thingToMove.changeOil()   //Cannot call it because thingToMove is not a Car, it is just a Moveable.

//So why I ever want to use a protocol
let thingsToMove: [Moveable] = [prius, square]
//They are not even the type, but they can be collected in the same array

func slide(slider:Moveable){
    let positionToSlideTo = ...
    slider.move(to: positionToSlideTo)
}

slide(prius)
slide(square)
