//: Playground - noun: a place where people can play

import UIKit

func challenge1(input: String) -> Bool {
    let set = Set(input.characters)
    return Set(input.characters).count == input.characters.count
    
}
challenge1(input: "mississippi")

// took 8:45
// had to look at 3 hints
