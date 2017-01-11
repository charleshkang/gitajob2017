//: [Previous](@previous)

import Foundation

func challenge58(input: String) -> Bool {
    let allowedBrackets = "([{<>}])"
    let allowedCharacterSet = CharacterSet(charactersIn: allowedBrackets).inverted
    guard input.rangeOfCharacter(from: allowedCharacterSet) == nil else { return false }
    let matchingBrackets: [Character: Character] = ["(": ")",
                            "[": "]",
                            "{": "}",
                            "<": ">"]
    var usedBrackets = [Character]()
    for bracket in input.characters {
        if matchingBrackets.keys.contains(bracket) {
            usedBrackets.append(bracket)
        } else {
            if let previousBracket = usedBrackets.popLast() {
                if matchingBrackets[previousBracket] != bracket {
                    return false
                }
            } else {
                return false
            }
        }
    }
    return usedBrackets.count == 0
}
challenge58(input: "][]][")
challenge58(input: "hello")
challenge58(input: "[<<<{}>>]")
challenge58(input: "([])(<{}>)")