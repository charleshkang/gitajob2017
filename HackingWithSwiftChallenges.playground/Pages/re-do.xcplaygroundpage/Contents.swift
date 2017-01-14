//: [Previous](@previous)

import Foundation

func challenge2(input: String) -> Bool {
    return input.characters.reversed() == Array(input.characters)
}
challenge2(input: "moom")

func challenge3(input1: String, input2: String) -> Bool {
    let sorted1 = input1.characters.sorted()
    let sorted2 = input2.characters.sorted()
    
    return sorted1 == sorted2
}
challenge3(input1: "charles", input2: "echsalr")

extension String {
    func fuzzyContains(input: String) -> Bool {
        return range(of: input, options: .caseInsensitive) != nil
    }
}

func challenge5(input: String, specificChar: Character) -> Int {
    var seenCount = 0
    
    for letter in input.characters {
        if letter == specificChar {
            seenCount+=1
        }
    }
    return seenCount
}
challenge5(input: "hello", specificChar: "l")

func challenge6(input: String) -> String {
    var used = [Character]()
    
    for char in input.characters {
        if !used.contains(char) {
            used.append(char)
        }
    }
    return String(used)
}
challenge6(input: "bumblebee")