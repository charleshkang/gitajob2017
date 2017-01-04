//: [Previous](@previous)

import Foundation

//func challenge17(min: Int, max: Int) -> UInt32 {
//    let randomNum = arc4random_uniform(UInt32(max)) - arc4random_uniform(UInt32(min))
//    return randomNum
//}
//challenge17(min: 2, max: 3)
//challenge17(min: 8, max: 10)
//challenge17(min: 12, max: 12)
//challenge17(min: 2, max: 3)

func challenge17b(min: Int, max: Int) -> Int {
    return Int(arc4random_uniform(UInt32(max - min + 1))) + min
}
challenge17b(min: 12, max: 12)
// took 13mins 