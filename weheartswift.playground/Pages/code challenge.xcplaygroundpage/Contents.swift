//: [Previous](@previous)

import Foundation

let a1 = [1,2,3,4,5]
let a2 = [6,7,8,9,10]
let a3 = [11,12,13,14,15]

func greaterThan3(input: Int) -> Bool {
    return input > 3
}

func sum2Numbers(input1: Int, input2: Int) -> Int {
    return input1 + input2
}



func sumArray(array: [Int]) -> Int {
    var sum = 0
    for num in array {
        sum+=num
    }
    return sum
}
sumArray(array: a1)

func productArray(array: [Int]) -> Int {
    var arrayCopy = array
    
    if array.count == 0 {
        return 1
    }
    let element = arrayCopy.remove(at: 0)
    return element * productArray(array: arrayCopy)
}
productArray(array: a1)

func maxArray(array: [Int]) -> Int {
    return array.reduce(array.first!) {$0 > $1 ? $0 : $1}
}
maxArray(array: a1)

func filterArray(array: [Int], filterF: (Int) -> Bool) -> [Int] {
    var filtered = [Int]()
    return array.reduce(filtered) { (result, int) -> [Int] in
        if filterF(int) {
            filtered.append(int)
        }
        return filtered
    }
}
filterArray(array: a1, filterF: greaterThan3)




// only zip up to shortest length array
func zipWith(array1: [Int], array2: [Int], zipF: (Int,Int) -> Int) -> [Int] {
    var zipped = [Int]()
    let maxIndex = min(array1.count, array2.count)
    
    for i in 0..<maxIndex {
        zipped.append(zipF(array1[i], array2[i]))
    }
    return zipped
}
zipWith(array1: a1, array2: a2, zipF: sum2Numbers)

func arbitraryCondiitonal(input1: Int, input2: Int) -> Bool {
    return input1 * 2 == input2
}


// takes every combination of elements from a1 and a2, then pass them through conditional function,
// if it passes, zip it into a final array

// arr1 = [1,2,3,4]
// arr2 = [5,6,7,8]

// output = []

func compose(a1: [Int], a2: [Int], outputFunc: ((Int, Int) -> Int), conditional: (Int, Int) -> Bool) -> [Int] {
    var composed = [Int]()
    
    for element1 in a1 {
        for element2 in a2 {
            if conditional(element1, element2) {
                composed.append(outputFunc(element1, element2))
            }
        }
    }
    return composed
}
compose(a1: a1, a2: a2, outputFunc: sum2Numbers, conditional: arbitraryCondiitonal)
