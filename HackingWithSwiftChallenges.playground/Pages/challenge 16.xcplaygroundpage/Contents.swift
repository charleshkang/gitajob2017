//: [Previous](@previous)

import Foundation

func challenge16() {
    for i in 1...100 {
        if i % 3 == 0 && i % 5 == 0 {
            print("Fizz Buzz")
        } else if i % 3 == 0 {
            print("Fizz")
        } else if i % 5 == 0 {
            print("Buzz")
        } else {
            print(i)
        }
    }
}

func challenge16b() {
    for i in 1...100 {
        if i % 3  == 0 {
            if i % 5 == 0 {
                print("Fizz Buzz")
            } else {
                print("Fizz")
            }
        } else if i % 5 == 0 {
            print("Buzz")
        } else {
            print(i)
        }
    }
}
//challenge16()
challenge16b()
// took 3:40 for first solution
// took 3 for 2nd

// you can use forEach, but it looks like we sacrifice readability for bragging rights
// not sure how the performance differs but we don't have to evaluate i % 3 twice anymore





let num = 5

func dupes(input: String) -> Bool {
    
    return Set(input.characters)
}
