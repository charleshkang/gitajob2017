//: [Previous](@previous)

import Foundation

func insertionSort<T: Comparable>(inout values: [T]) -> Void {
    for i in 1..<values.count {
        var j = i
        while j > 0 && values[j - 1] > values[j] {
            swap(&values[j], &values[j - 1])
            j -= 1
        }
    }
}

func quickSort<T: Comparable>(inout values:[T], lo: Int, hi: Int) {
    let p = partition(&values, lo: 0, hi: values.count - 1)
    quickSort(&values, lo: lo, hi: p - 1)
    quickSort(&values, lo: p + 1, hi: hi)
}

func partition<T: Comparable>(inout values:[T], lo: Int, hi: Int) {
    let pivotIndex = values.endIndex - 1
    let pivot = values[values.endIndex - 1]
    var i = 0
    for j in 0..<(values.count - 1) {
        if values[j] <= pivot {
            swap(&values[i], &values[j])
            i += 1
        }
    }
    swap(&values[i], &values[pivotIndex])
}


var values = [1, 2, 2, 4, 5]
insertionSort(&values)
values


//: [Next](@next)
