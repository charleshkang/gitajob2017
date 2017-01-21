//: [Previous](@previous)

import Foundation

// 2. Write a function that returns the nth Fibonacci number.

func findNthFibo(n: Int) -> Int
{
    guard n >= 2 else { return n } // use guard for readability and swift-y way to implement base case
    return findNthFibo(n - 1) + findNthFibo(n - 2)
}
findNthFibo(3)
