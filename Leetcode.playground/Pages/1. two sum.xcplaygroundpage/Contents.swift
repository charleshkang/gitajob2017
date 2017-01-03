//: [Previous](@previous)

import Foundation

//func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
//    var array = [Int]()
//    var numA = nums[0]
//    var numB = 0
//
//    for num in nums {
//        numB = target - numA
//    }
//    if target == numA + numB {
//        array.append(numA)
//        array.append(numB)
//    }
//    return array
//}
//twoSum([2, 7, 11, 15], 26)

func twoSum2(_ nums: [Int], _ target: Int) -> [Int] {
    var dict = [Int:Int]()
    var result = [Int]()
    for (k, v) in nums.enumerated() {
        dict[v] = k
    }
    for (k, v) in nums.enumerated() {
        if let j = dict[target - v], k != j {
            return [k, j]
        }
        result.append(k)
        result.append(v)
    }
    return result
}
twoSum2([2,7,11,15], 18)
