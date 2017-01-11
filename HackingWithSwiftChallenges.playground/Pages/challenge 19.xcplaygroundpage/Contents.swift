//: [Previous](@previous)

import Foundation

var a = 4
var b = 5

swap(&a, &b)
print(a)
print(b)
// took 6 mins
// thought i needed a function

var c = 1
var d = 2
(c, d) = (d, c)
