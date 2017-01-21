//: [Previous](@previous)

import Foundation

// 10. I give you a String, return a String without duplicates.

func noDupes(str:[Int]) -> [Int
{
    var uniqueStr = ""
    var seenDict = [Character:Bool]()
    
    for char in str.characters {
        let seen = seenDict[char] ?? false
        if !seen {
            seenDict[char] = true
            uniqueStr.append(char)
        }
    }
    return uniqueStr
}
noDupes("connecticut")
