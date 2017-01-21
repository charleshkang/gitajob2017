//: [Previous](@previous)

import Foundation

func nthSmallest(arr: [Int], k: Int) -> Int?
{
    let len = arr.count
    if k > 0 && k <= len {
        let sorted = arr.sort()
        return sorted[k - 1]
    } else {
        return nil
    }
}
nthSmallest([4,2,1], k: 2)
nthSmallest([6,24,12,10,29], k: 2)
nthSmallest([6,24,12,10,29], k: 5)
nthSmallest([6,24,12,10,29], k: 1)
nthSmallest([6,24,12,10,29], k: 4)

func kthLargest(a: [Int], k: Int) -> Int? {
    let len = a.count
    if k > 0 && k <= len {
        let sorted = a.sort()
        return sorted[len - k]
    } else {
        return nil
    }
}
kthLargest([4,2,1,3], k: 1)

func small(arr:[Int]) -> Int
{
    var smallest = arr[0]
    var secondSmallest = arr[1]
    
    for e in arr {
        if e < smallest {
            secondSmallest = smallest
            smallest = e
        } else if e < secondSmallest && e != smallest {
            secondSmallest = e
        }
    }
    return secondSmallest
}
small([6,4,3,12,1])
small([5,4,2,1,3,6,7])
small([100231,2,1230])


func secondLargest(arr: [Int]) -> Int
{
    var largest = arr[0]
    var secondLargest = arr[1]
    
    for e in arr {
        if e > largest {
            secondLargest = largest
            largest = e
        } else if e > secondLargest && e != largest {
            secondLargest = e
        }
    }
    return secondLargest
}
secondLargest([3,412,3213,1])
secondLargest([3,1,2])