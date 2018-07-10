//Property Observers

import UIKit

//struct is value type, meaning it gets copied! (copied when modified)
struct ContactInfo {
    var mobileNumber: String? {
        willSet{
            print("Before set, number: \(String(describing: mobileNumber))")
        }
        didSet {
            print("After set, number: \(String(describing: mobileNumber))")
            mobileExist = true
        }
    }
    var mobileExist = false
}

var newContactInfo = ContactInfo()
newContactInfo.mobileNumber = "+44 444 444 444"
newContactInfo.mobileExist
