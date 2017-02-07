//: [Previous](@previous)

import Foundation

extension Collection where Iterator.Element == Int {
    func challenge37(count: Character) -> Int {
        var total = 0
        
        for item in self {
            let str = String(item)
            
            for letter in str.characters {
                if letter == count {
                    total += 1
                }
            }
        }
        return total
    }
}
