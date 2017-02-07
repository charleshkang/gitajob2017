//: Playground - noun: a place where people can play

import UIKit

func challenge1(input: String) -> Bool {
    _ = Set(input.characters)
    return Set(input.characters).count == input.characters.count
    
}
challenge1(input: "charles")

// took 8:45
// had to look at 3 hints


func challenge1b(input: String) -> Bool {
    return Set(input.characters).count == input.characters.count
}


func challenge1c(input: String) -> Bool {
    return Set(input.characters).count == input.characters.count
}