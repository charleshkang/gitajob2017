//: Playground - noun: a place where people can play

import UIKit

// 1. Write a function that returns whether or not a phrase is a palindrome.

func isPaldinrome(str: String) -> Bool
{
    var reversedStr = ""
    
    for char in str.characters {
        reversedStr = "\(char)" + reversedStr
    }
    return str == reversedStr
}
isPaldinrome("hello")
