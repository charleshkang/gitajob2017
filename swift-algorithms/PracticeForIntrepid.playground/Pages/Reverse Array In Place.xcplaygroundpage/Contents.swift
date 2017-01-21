//: [Previous](@previous)

import Foundation

func reverse(arr:[Int]) -> [Int]
{
    var arr = arr
    
    var firstIndex = 0
    var lastIndex = arr.count - 1
    
    while firstIndex < lastIndex {
        let temp = arr[firstIndex]
        arr[firstIndex] = arr[lastIndex]
        arr[lastIndex] = temp
        
        firstIndex+=1
        lastIndex-=1
    }
    return arr
}
reverse([1,2,3,4])