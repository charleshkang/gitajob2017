//: [Previous](@previous)

import Foundation

func challenge2(input: String) -> Bool {
    var reversedString = ""
    
    for char in input.characters {
        reversedString = "\(char)" + reversedString
    }
    return reversedString == input
}

// above solution took 2 mins
// had to look at hints to come up with bottom solution

func challenge2b(input: String) -> Bool {
    let lowercase = input.lowercased()
    return lowercase.characters.reversed() == Array(lowercase.characters)
}
challenge2b(input: "moom")


