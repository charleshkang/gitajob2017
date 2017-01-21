//: [Previous](@previous)

import Foundation

//func removeDupes(arr: [Int]) -> [Int] {
//    let uniqueElements = Set(arr)
//    return Array(uniqueElements)
//}
//removeDupes([1,1,2,3,4])

//func swapValues(inout a: Int, inout b: Int) {
//    let tempInt = a
//    a = b
//    b = tempInt
//}
//var a = 3
//var b = 4

swapValues(&a, b: &b)
print(a, b)

//func removeNonLetters(inout input: String) -> String {
// 
//}

let charSet = NSCharacterSet(charactersInString: "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ").invertedSet
let unformatted = "american_samoa1"
let cleanedString = unformatted.componentsSeparatedByCharactersInSet(charSet).joinWithSeparator("")

print(cleanedString) // "americansamoa"


func alphachars(s: String) -> String {
    let arr = Array(s.characters)
    let charSet = Set(Array("abcdefghijklmnopqrstuvwxwzABCDEFGHIJKLMNOPQRSTUVWXYZ".characters))
    return String(arr.filter { return charSet.contains($0)})
}