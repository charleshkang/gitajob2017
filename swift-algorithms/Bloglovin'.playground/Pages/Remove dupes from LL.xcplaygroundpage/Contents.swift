//: [Previous](@previous)

import Foundation

class Node {
    var data: Int
    var next: Node?
    
    init(data: Int) {
        self.data = data
        self.next = nil
        self.next = nil
    }
    
    init(data: Int, next: Node?) {
        self.data = data
        self.next = next
    }
    
    func append(data: Int) {
        let end = Node(data: data)
        var node = self
        while node.next != nil {
            node = node.next!
        }
        node.next = end
    }
}


class Noode : Hashable, Equatable {
    
    var data : Int
    var next : Noode?
    
    init(data: Int) {
        self.data = data
        self.next = nil
    }
    init(data: Int, next: Noode?) {
        self.data = data
        self.next = next
    }
    
    func append(data : Int) {
        let end = Noode(data: data)
        var n = self
        while n.next != nil {
            n = n.next!
        }
        n.next = end
    }
    
    func asString() -> String {
        var s = ""
        s += "\(self.data), "
        var n = self
        while n.next != nil {
            n = n.next!
            s += "\(n.data), "
        }
        return s
    }
    
    var hashValue: Int { return data }
    
}
func ==(lhs: Noode, rhs: Noode) -> Bool {
    return lhs === rhs
}

func exercise1(list : Noode) {
    
    // Data, Original Index, Flagged
    var array : [(Int, Int, Bool)] = []
    var iter = list
    var index = 0
    array += [(iter.data, index, false)]
    while let value = iter.next {
        array += [(value.data, index, false)]
        index += 1
        iter = iter.next!
    }
    
    array.sortInPlace { $0.0 < $1.0 }
    
    // Flag duplicates
    for i in 1 ..< array.count {
        let pData = array[i - 1].0
        let data = array[i].0
        if data == pData {
            array[i].2 = true
        }
    }
    
    // TODO: Back to original ordering?
    array.sortInPlace { $0.1 < $1.1 }
    
    print("\(array)")
    
    var i = 1
    iter = list
    while let next = iter.next {
        let flag = array[i].2
        if flag == true {
            // Remove element from list!
            iter.next = next.next
        }
        else {
            iter = next
        }
        i += 1
    }
    
    iter = list
    print("\(iter.data)")
    while let value = iter.next {
        print("\(value.data)")
        iter = iter.next!
    }
}

func exercise1Hash(List : Noode) {
    var hash : [ Int : Bool ] = [:]
    var iter = List
    hash[iter.data] = true
    while let value = iter.next {
        if hash[value.data] != nil {
            // Element already exists: Delete
            iter.next = value.next
        }
        else {
            hash[value.data] = true
        }
        iter = value
    }
    iter = List
    print("\(iter.data)")
    while let value = iter.next {
        print("\(value.data)")
        iter = iter.next!
    }
}
let list = Noode(data: 2, next: Noode(data: 2, next: Noode(data: 4, next: Noode(data: 1, next: Noode(data: 1, next: Noode(data: 3, next: Noode(data: 5, next: Noode(data: 5))))))))
exercise1Hash(list)
print(exercise1Hash(list))