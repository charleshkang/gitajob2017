//: [Previous](@previous)

import Foundation

class Node<T: Comparable> {
    let value: T
    var left: Node<T>?
    var right: Node<T>?
    init(value: T) {
        self.value = value
    }
}

extension Node {
    
    func bfs(value: T) -> Node? {
        // Check the current node (self)'s value
        if self.value == value {
            // If it matches, return self
            return self
        }
        // Check each of this node's child nodes
        for child in [left, right] {
            if child?.value == value {
                return child
            }
        }
        // Repeat this whole process for each of the child nodes
        for child in [left, right] {
            if let result = child?.bfs(value) {
                return result
            }
        }
        return nil
    }
}

let a = Node(value: 1)
let b = Node(value: 2)
let c = Node(value: 3)
let d = Node(value: 4)
let e = Node(value: 5)
let f = Node(value: 6)
let g = Node(value: 7)

d.left = b
b.left = a
b.right = c
d.right = f
f.left = e
d.right = g



