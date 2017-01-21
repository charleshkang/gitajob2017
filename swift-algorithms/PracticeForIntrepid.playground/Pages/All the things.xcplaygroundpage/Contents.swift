//: [Previous](@previous)

import Foundation

// 1. Write a function that returns whether or not a phrase is a palindrome.
func palindrome(str: String) -> Bool
{
    var reversedStr = ""
    
    for char in str.characters {
        reversedStr = "\(char)" + reversedStr
    }
    return str == reversedStr
}
palindrome("maddam")

// 2. Write a function that returns the nth Fibonacci number.
func nthFibo(n:Int) -> Int
{
    guard n >= 2 else { return n }
    
    return nthFibo(n - 1) + nthFibo(n - 2)
}
nthFibo(5)

// 3. Write a function that returns the median value of 3 given integers without using arrays. (Integers are given to you as separate parameters)

// We know we need a nested func, one that actually finds the median and one that checks...what?
func median(a:Int, _ b:Int, _ c:Int) -> Int
{
    func check(num:Int, _ first:Int, _ second:Int) -> Int? // return optional int since 2/3 results will be nil each check
    {
        if num > min(first, second) && num < max(first, second) {
            return num
        }
        return nil
    }
    return check(a, b, c) ?? check(b, a, c) ?? check(c, a, b)!
}
median(50, 79, 29)

// 10. I give you a String, return a String without duplicates.
func noDupes(str:String) -> String
{
    var uniqueStr = ""
    var seenDict = [Character:Bool]()
    
    for char in str.characters {
        let seen = seenDict[char] ?? false
        if !seen {
            seenDict[char] = true
            uniqueStr.append(char)
        }
    }
    return uniqueStr
}
noDupes("coffeecoffee")

// 8. How do you determine if the parenthesis in a String are both balanced and valid?

let set:[Character:Character] = [
"(":")",
"[":"]",
"{":"}"
]

func balance(str: String) -> Bool
{
    var stack = [Character]()
    for char in str.characters {
        if set.keys.contains(char) {
            stack.append(char)
        }
        if let opened = stack.last {
            if let closingParen = set[opened] {
                if char == closingParen {
                    stack.removeLast()
                }
            }
        }
    }
    return stack.count == 0
}
balance("(), (()), ()(), (()())")
balance(")(, ))(, ()), ()))((")


func mid(a:Int, b:Int, c:Int) -> Int
{
    func check(num: Int, first: Int, second: Int) -> Int?
    {
        if num > min(first, second) && num < max(first, second) {
            return num
        }
        return nil
    }
    return check(a, first: b, second: c) ?? check(b, first: a, second: c) ?? check(c, first: a, second: b)!
}
mid(5, b: 1, c: 2)
mid(320321, b: 2131, c: 19219)