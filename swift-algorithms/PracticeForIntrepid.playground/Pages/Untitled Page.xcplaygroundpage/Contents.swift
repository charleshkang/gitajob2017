//: [Previous](@previous)

import Foundation

// CHECK IS A TERRIBLE NAME FOR A FUNCTION. NEVER DO THAT AGAIN PLEASE
// USE SOMETHING THAT ACTUALLY MAKES SENSE LIKE..."ISBETWEEN" OR SOMETHING :/ 

func median(a: Int, _ b: Int, _ c: Int) -> Int
{
    func check(num: Int, _ first: Int, _ second: Int) -> Int?
    {
        if num > min(first, second) && num < max(first, second) { // if number is in between
            return num
        }
        return nil
    }
    return check(a, b, c) ?? check(b, a, c) ?? check(c, a, b)!
}
median(21312, 1232191, 129283)

// CHAAAAAAAAAAAAAAAAAAAAAAAAAAARLES. 