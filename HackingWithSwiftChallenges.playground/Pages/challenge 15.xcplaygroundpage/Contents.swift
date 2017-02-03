//: [Previous](@previous)

import Foundation

func challenge15(input: String) -> String {
    let parts = input.components(separatedBy: " ")
    let reversed = parts.map
        { String($0.characters.reversed()) }
    return reversed.joined(separator: " ")
}
challenge15(input: "Swift Coding Challenges")