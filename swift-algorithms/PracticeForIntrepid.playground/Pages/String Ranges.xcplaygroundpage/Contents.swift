//: [Previous](@previous)

import Foundation

/*
 // return array of string with ranges
 9. I give you a sorted array of ints and want you to return an array of Strings with the ranges so:
	-I give you: 1, 2, 3, 5, 6, 9, 12, 13, 14, 15
	-You return: ["1-3","5-6","9","12-15"]
 
 */

func stringWithRanges(sortedArr: [Int]) -> [String]
{
    var returnArray = [String]()
    for i in 0..<sortedArr.count{
        let savedIndex = sortedArr[i]
        if i != sortedArr.count - 1 {
            let currentIndexPlusOne = sortedArr[i]
            let currentValuePlusOne = sortedArr[i + 1]
            if currentIndexPlusOne != currentValuePlusOne {
                _ = sortedArr.map { String($0) }
                returnArray.append("\(savedIndex) - \(currentValuePlusOne)")
            }
        }
    }
    return returnArray
}
stringWithRanges([1,2,3,7,8,9])

