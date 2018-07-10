//Dictionary

import UIKit

var str = "Hello, playground"

var numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]


var dic = [Int:String]()

func fillDictionary(){
    for num in numbers {
        if num % 2 == 0 {
            dic[num] = "Even"
        }
        else {
            dic[num] = "Odd"
        }
    }
}

func showDictionary(num: Int) -> String{
    return dic[num] ?? "Out of array range"
}

fillDictionary()

for num in numbers{
    print("\(num) is \(showDictionary(num: num))")
}
