//: [Previous](@previous)

import Foundation

func fizzBuzz(_ n: Int) -> [String] {
    var array = [String]()
    for i in 1...n {
        if i % 3  == 0 {
            if i % 5 == 0 {
                array.append("FizzBuzz")
            } else {
                array.append("Fizz")
            }
        } else if i % 5 == 0 {
            array.append("Buzz")
        } else {
            array.append(String(i))
        }
    }
    print(array)
    return array
}
fizzBuzz(15)