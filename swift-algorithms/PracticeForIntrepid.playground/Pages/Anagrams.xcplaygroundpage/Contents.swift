//: [Previous](@previous)

import Foundation

func anagramCheck(str: String, permutatedStr: String) -> Bool
{
    if str.characters.count != permutatedStr.characters.count {
        return false
    }
    
    var charCount = [Character:Int]()
    for char in str.characters {
        if let count = charCount[char] where count > 0 {
            charCount[char]! += 1
        }
    }
    
    for char in permutatedStr.characters {
        if let count = charCount[char] where count > 0 {
            charCount[char]! -= 1
        }
    }
    return true
}
anagramCheck("charle", permutatedStr: "orange")

// jonathan@intrepid.io - first dude that worked at jp morgan
// bweber@intrepid.io - was a lawyer, pretty cool transition, was an apprentice
// ben@intrepid.io - senior dev, mention that i felt burnt out? idk lol 


