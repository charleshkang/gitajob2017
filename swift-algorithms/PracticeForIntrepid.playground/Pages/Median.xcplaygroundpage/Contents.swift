//: [Previous](@previous)

import Foundation

func medianValue(a: Int, _ b: Int, _ c: Int) -> Int {
    func check(num: Int, _ first: Int, _ second: Int) -> Int? {
        if (num > min(first, second) && num < max(first, second)) {
            return num
        }
        return nil
    }
    return (check(a, b, c) ?? check(b, a, c) ?? check(c, a, b))!
}
medianValue(123,929,3)

