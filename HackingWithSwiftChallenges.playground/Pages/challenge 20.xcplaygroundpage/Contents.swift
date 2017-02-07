//: [Previous](@previous)

import Foundation

func challenge20(input: Int) -> Bool {
    
    for num in 2..<input {
        if input % num == 0 {
            return true
        }
    }
    return false
}
challenge20(input: 11)
challenge20(input: 13)
challenge20(input: 4)
challenge20(input: 16777259)
