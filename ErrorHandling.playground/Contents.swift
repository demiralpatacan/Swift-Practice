//Error Handling

import UIKit

func save(){
    do {
        try context.save()
    } catch let error {
        throw error
    }
}

//If you are certain a call will not throw, force try with try!
try! context.save()

//Or returns optional; If fail, returns nil
let x = try? errorFunctionThatReturnsInt()
