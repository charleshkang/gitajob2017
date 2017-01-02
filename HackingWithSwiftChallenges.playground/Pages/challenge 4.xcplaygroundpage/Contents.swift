//: [Previous](@previous)

import Foundation

extension String {
    func fuzzyContains(input: String) -> Bool {
        return range(of: input, options: .caseInsensitive) != nil
    }
}
"hello, world,".fuzzyContains(input: "world")
"hello, world,".fuzzyContains(input: "CHARLES")
// took 5 mins, wasn't sure how to use `rangeOf` so
// needed to look at a few hints