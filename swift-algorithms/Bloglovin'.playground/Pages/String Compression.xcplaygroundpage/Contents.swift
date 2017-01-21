//: [Previous](@previous)

import Foundation

func exercise5(s: String) -> String {
    
    var compressed = ""
    var lastCharacter : Character = " "
    var repeated = 0
    for character in s.characters {
        if lastCharacter != character {
            if lastCharacter != " " {
                let codePoint = Character("0").unicodeScalarCodePoint() + UInt32(repeated)
                print(codePoint)
                compressed += String(lastCharacter)
                compressed.append(Character(UnicodeScalar(codePoint)))
            }
            repeated = 1
        }
        else {
            repeated+=1
        }
        lastCharacter = character
    }
    let codePoint = Character("0").unicodeScalarCodePoint() + UInt32(repeated)
    compressed.append(lastCharacter)
    compressed.append(Character(UnicodeScalar(codePoint)))
    
    return compressed.characters.count >= s.characters.count ? s : compressed
}

extension Character {
    func unicodeScalarCodePoint() -> UInt32 {
        let characterString = String(self)
        let scalars = characterString.unicodeScalars
        
        return scalars[scalars.startIndex].value
    }
}
exercise5("aaaaaabbbbbccccaadd")
exercise5("aabb")
exercise5("aaabbbbbbbddddeeeeekkkkkccccqqqqqza")

var string = "hello"
for c in string.characters {
    
}
