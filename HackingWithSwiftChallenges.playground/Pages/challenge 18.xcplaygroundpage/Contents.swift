//: [Previous](@previous)

import Foundation

func challenge18(num: Int, pow: Int) -> Int {
    guard num > 0, pow > 0 else { return 0 }
    var returnValue = num    
    for _ in 1..<pow {
        returnValue *= num
    }
    return returnValue
}
challenge18(num: 2, pow: 3)
// took 8 mins
// can also do recursively
