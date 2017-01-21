//: [Previous](@previous)

import Foundation

public class Tree {
    public var x = 0
    public var l : Tree?
    public var r : Tree?
    public init() {}
}

func solution(tree:Tree?) -> Int {
    var toProcess = [Tree]()
    
    if (Tree.self == NSNull.self) {
        return 0
    }
    var maxLength = 0
    tree!.x = 0
    toProcess.append(tree!)
    
    while toProcess.count != 0 {
        let currentNode: Tree = toProcess[toProcess.count - 1]
        toProcess.removeAtIndex(toProcess.count - 1)
        let reminder = currentNode.x % 10000
        print(reminder)
        if currentNode.l != nil {
            currentNode.l?.x = 1 + reminder
            maxLength = max(maxLength, (currentNode.l?.x)!)
            toProcess.append(currentNode.l!)
        }
        if currentNode.r != nil {
            currentNode.r!.x = 10000 + currentNode.x - reminder
            maxLength = max(maxLength, currentNode.r!.x / 10000)
            toProcess.append(currentNode.r!)
        }
    }
    return maxLength
}
