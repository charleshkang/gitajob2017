//: [Previous](@previous)

import Foundation

func challenge1(input: String) -> Bool {
    let set = Set(input.characters)
    return set.count == input.characters.count
}
challenge1(input: "charles")