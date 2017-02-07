//: [Previous](@previous)

import Foundation

var centerNode: LinkedListNode<T>? {
    var slow = start
    var fast = start
    
    while fast != nil && fast?.next != nil {
        slow = slow?.next
        fast = fast?.next?.next
    }
    return slow
}