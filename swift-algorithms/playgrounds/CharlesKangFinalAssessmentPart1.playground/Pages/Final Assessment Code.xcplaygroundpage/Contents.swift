//: [Previous](@previous)

import Foundation

//class binaryTreeNode<T>
//{
//    var value: T
//    var parent: binaryTreeNode?
//    var child = [binaryTreeNode<T>]()
//
//    init(value: T) {
//        self.value = value
//    }
//
//    func addChildNode(node: binaryTreeNode<T>) {
//        child.append(node)
//        node.parent = self
//}


//    func mysteryFunc(values: [Int]) -> [Int] {
//        let n = values.count
//        if n < 2 {
//            return values
//        }
//        var left = Array(values[0..<n / 2])
//        var right = Array(values[n / 2..<n])
//        left = mysteryFunc(left)
//        right = mysteryFunc(right)
//
//        return helperFunc(left, right)
//    }
//
//    func helperFunc(var left: [Int], var _ right: [Int]) -> [Int] {
//        var result: [Int] = []
//        while !left.isEmpty && !right.isEmpty {
//            if left[0] < right[0] {
//                result.append(left[0])
//                left.removeAtIndex(0)
//            } else {
//                result.append(right[0])
//                right.removeAtIndex(0)
//            }
//        }
//        return result + left + right
//}
//mysteryFunc([7,1,3,6])

//func iterativeFunc(characterArray: [String])->Int {
//    var counter = 0
//    for x in 0..<characterArray.count {
//        if characterArray[x] == " " {
//            counter += 1
//        } else if characterArray[x] == "a" {
//            counter -= 5
//        }
//    }
//    return counter
//}
//iterativeFunc([" "])

// Q19 (6 pts): Rewrite iterativeFunc() as a recursive function. Expect the same inputs, and your function’s output should be exactly the same as the original function. *


//func recursiveFunc(characterArray: [String]) -> Int
//{
//    var counter = 0
//    // base case
//    if counter == 0 {
//    return 1
//    }
//
//    for x in 0..<characterArray.count {
//        if characterArray[x] == " " {
//        counter += 1
//    } else if characterArray[x] == "a" {
//        counter -= 5
//    }
//    return counter + recursiveFunc(counter -= 5) or (counter += 1)
//}


//    func rotateArray(rotateArray: [Array]) -> Array] {
//
//}

//struct ArrayThatIs2D<T> 
//{
//    let columns: Int
//    let rows: Int
//    var arr: [T]
//    
//    init(columns: Int, rows: Int, firstValue: T) {
//        self.columns = columns
//        self.rows = rows
//        arr = .init(count: rows * columns, repeatedValue: firstValue)
//    }
//    
//    subscript(column: Int, row: Int) -> T {
//        get {
//            return arr[row * columns + column]
//        }
//        set {
//            arr[row*columns + column] = newValue
//        }
//    }
//}
