//: [Previous](@previous)

import Foundation

func challenge7(input: String) -> String {
    var seenSpace = false
    var returnValue = ""
    
    for letter in input.characters {
        if letter == " " {
            if seenSpace { continue }
            seenSpace = true
        } else {
            seenSpace = false
        }
        returnValue.append(letter)
    }
    return returnValue
}
challenge7(input: "    a")
challenge7(input: "a   b   c")
// 15 mins, sort of close to a naive solution
// total time: 18 mins 