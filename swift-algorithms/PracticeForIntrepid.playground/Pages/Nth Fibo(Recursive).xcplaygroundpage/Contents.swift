//: [Previous](@previous)

import Foundation

func fibo(n:Int) -> Int
{
    guard n >= 2 else { return n }
    print(fibo(n - 1) + fibo(n - 2))
    return fibo(n - 1) + fibo(n - 2)
}
fibo(13)

