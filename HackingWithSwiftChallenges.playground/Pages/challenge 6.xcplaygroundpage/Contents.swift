//: [Previous](@previous)

import Foundation

//func challenge6(input: String) -> String {
//    var uniqueString = ""
//    var hasBeenSeen = false
//    var charArray = [Character]()
//    for letter in input.characters {
//       charArray.append(letter)
//    }
//    charArray.filter { (<#Character#>) -> Bool in
//        <#code#>
//    }
//    return uniqueString
//}
// at 9:50, unable to come up with a solution
//
func challenge6b(input: String) -> String {
    var used = [Character]()
    for letter in input.characters {
        if !used.contains(letter) {
            used.append(letter)
        }
    }
    return String(used)
}
challenge6b(input: "mississippi")
challenge6b(input: "wombat")

func challenge6c(string: String) -> String {
    var used = [Character: Bool]()
    
    let result = string.characters.filter {
        used.updateValue(true, forKey: $0) == nil
    }
    return String(result)
}
challenge6c(string: "mississippi")
// i need to understand higher order functions more!
// so we created a dictionary with character key and bool values,
// then use filter on the string's character property, updating the value
// and returning either the original value or nil...
