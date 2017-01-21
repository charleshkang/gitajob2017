//: [Previous](@previous)

import Foundation

// Given an array of ints, find the largest number

// create a var called currentLargest and set it to the first element in the array
// iterate over the array elements
// for each element, if currentLargest is < than arr[i], set arr[i] to currentLargest

func largestNum(arr: [Int]) -> Int
{
    var currentLargest = arr[0]
    
    for i in 0..<arr.count {
        if currentLargest < arr[i] {
            currentLargest = arr[i]
        }
    }
    return currentLargest
}
largestNum([5,1,2312,1231,2,2311,722,11])

// Given an array of ints, find the 2nd largest number

func secondLargestNum(arr: [Int]) -> Int
{
    var currentLargest = arr[0] //3
    var currentSecondLargest = arr[1] // 2
    
    for e in arr {
        if e > currentLargest {
            currentSecondLargest = currentLargest
            currentLargest = e
        } else if e > currentLargest && e != currentLargest {
            currentSecondLargest = e
        }
    }
    return currentSecondLargest
}
secondLargestNum([3,2,1])
secondLargestNum([3,5,1,2,3,415123,212321,2131251,29999])
secondLargestNum([1,2,3,4,3,2,1])


func reverse(arr:[Int]) -> [Int]
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
reverse([5,4,3,1])