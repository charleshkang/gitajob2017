//: [Previous](@previous)

import Foundation

func challenge3(input1: String, input2: String) -> Bool {
    let orderedStringA = input1.characters.sorted()
    let orderedStringB = input2.characters.sorted()
    
    return orderedStringA == orderedStringB
}
challenge3(input1: "abca", input2: "abca")
challenge3(input1: "bcaa", input2: "cbaa")
challenge3(input1: "abc", input2: "cbAa")
challenge3(input1: " a1 b2 ", input2: "b 1 a 2")

func challenge3b(input1: String, input2: String) -> Bool {
    let arr1 = Array(input1.characters)
    let arr2 = Array(input2.characters)
    
    return arr1.sorted() == arr2.sorted()
}
challenge3b(input1: " a1 b2 ", input2: "b 1 a 2")
// took 3:12
// it's hard not to see the hints when i first look at the question, but i looked at 2 hints
// challenge3 actually doesn't work for all cases
// nevermind, my first solution works, didn't realize the test cases had the spaces
