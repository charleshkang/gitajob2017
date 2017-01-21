

import UIKit


//class Node {
//    var left: Node?
//    var right: Node?
//    let symbol: String
//    
//    init(symbol: String) {
//        self.symbol = symbol
//    }
//}
//
//var root = Node(symbol: "root")
//
//var l = Node(symbol: "left")
//root.left = l
//
//var r = Node(symbol: "right")
//root.right = r
//
//root.left?.left
//root.right?.right



class Node<T: Comparable> {
    var left: Node?
    var right: Node?
    let symbol: T
    init(symbol: T) {
        self.symbol = symbol
    }
}

// BST methods
extension Node {
    func find(symbol: T) -> Node? {
        if self.symbol == symbol {
            return self
        }
        if symbol < self.symbol {
            return left?.find(symbol)
        } else {
            return right?.find(symbol)
        }
    }
}

//func insert(symbol: T) {
//    if symbol < self.symbol {
//        if left == nil {
//            left = Node(symbol: symbol)
//        } else {
//            left?.insert(symbol)
//        }
//    } else {
//        if right == nil {
//            right = Node(symbol: symbol)
//        } else {
//            right?.insert(symbol)
//        }
//    }
//}