//Enums

import UIKit

//Enums are value types, meaning copied
enum FastFoodMenuItem {
    case hamburger(numberOfPatties: Int)
    case fries(size: FryOrderSize)
    case drink(String, ounces: Int) // unknown string may be brand
    case cookie
}

enum FryOrderSize {
    case large
    case small
}

//Set the values of enum
let menuItem: FastFoodMenuItem = FastFoodMenuItem.hamburger(numberOfPatties: 3)

//let anotherItem : FastFoodMenuItem = FastFoodMenuItem.cookie
let anotherItem : FastFoodMenuItem = .cookie

let otherItem: FastFoodMenuItem = .fries(size: .small)
print(menuItem)
print(anotherItem)
print(otherItem)

//Check enum state
switch menuItem {
    case .hamburger: print("yummy")
    case .fries: break //do nothing
    case .drink: print("drink")
    case .cookie: print("cookie")
}
