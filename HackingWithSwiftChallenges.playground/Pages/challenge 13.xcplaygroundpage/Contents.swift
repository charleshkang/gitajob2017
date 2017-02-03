//: [Previous](@previous)

import Foundation

func challenge13(input: String) -> String {
    var letterCount = 0
    var currentLetter: Character?
    var returnValue = ""
    
    
    for letter in input.characters {
        if letter == currentLetter {
            letterCount+=1
        } else {
            if let current = currentLetter {
                returnValue.append("\(current)\(letterCount)")
            }
            currentLetter = letter
            letterCount = 1
        }
    }
    if let current = currentLetter {
        returnValue.append("\(current)\(letterCount)")
    }
    
    if letterCount <= 1 {
        return input
    }
    
    
    return returnValue
}
challenge13(input: "aabbcc")
challenge13(input: "aaabaaabaaa")
challenge13(input: "abc")
challenge13(input: "a")
challenge13(input: "abcdefghijklmnop")
