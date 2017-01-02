//: [Previous](@previous)

import Foundation

func challenge5(input: String, count: Character) -> Int {
    var letterCount = 0
    
    for letter in input.characters {
        if letter == count {
            letterCount+=1
        }
    }
    return letterCount
}

challenge5(input: "Hacking with Swift", count: "i")
// technically took 15 mins, but that due to xcode8 playgrounds being crappy. 
// had to look at the solution for this one. 