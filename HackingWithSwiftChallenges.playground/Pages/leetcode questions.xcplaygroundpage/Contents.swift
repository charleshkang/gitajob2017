//: [Previous](@previous)

import Foundation

class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var numCount = 0
        for num in nums {
            if nums.contains(num) {
                numCount+=1
            }
        }
    }
}