//: Playground - noun: a place where people can play

import UIKit

func fizzBuzz(numberOfTurns: Int) {
    for i in 1...numberOfTurns {
        _ = ""
        if i % 15 == 0 {
            print("FizzBuzz")
        }
        if i % 3 == 0 {
            print("Fizz")
        }
        if i % 5 == 0 {
            print("Buzz")
        }
    }
}
fizzBuzz(100)