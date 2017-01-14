//: [Previous](@previous)

import Foundation

struct someStruct {
    var number = 0
}

class someClass {
    var number = 0
}

var reference = someClass()
reference.number = 42
var reference2 = reference
reference2.number = 43
print("the number in reference2 is \(reference2.number)")

var value = someStruct()
value.number = 42
var value2 = value
value.number = 43
print("the number in value2 is \(value.number)")
