//: [Previous](@previous)

import Foundation

// write me a function
// called "reverse"
// takes in an array of integers
// outputs the reversed array

// [ 2, 6, 5, 3 ] -> [ 3, 5, 6, 2 ]


func reverse(arr: [Int]) -> [Int]
{
    var arr = arr
    
    var firstIndex = 0
    var lastIndex = arr.count - 1
    
    while firstIndex < lastIndex {
        let temp = arr[firstIndex]
        arr[firstIndex] = arr[lastIndex]
        arr[lastIndex] = temp
        
        firstIndex += 1
        lastIndex -= 1
    }
    return arr
}

func solution(s: String) -> String {
    var reversedStr = ""
    
    for char in s.characters {
        reversedStr =  "\(char)" + reversedStr
    }
    return reversedStr
}
solution("dlkajda")
// adjakld

//func solution(s: String) -> String {
//    return String(s.characters.reverse())
//}
//solution("dlkajda")