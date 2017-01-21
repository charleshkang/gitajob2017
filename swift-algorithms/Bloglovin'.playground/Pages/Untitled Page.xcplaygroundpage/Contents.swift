//: [Previous](@previous)

import Foundation

func uniqueNames(names:[String]) -> [String]
{
    var nameDict = [String:Int]()
    var uniqueArr = [String]()
    let hasBeenSeenFlag = 1
    
    for name in names {
        if let hasBeenSeenFlag = nameDict[name] {
            continue
        } else {
            uniqueArr.append(name)
            nameDict[name] = hasBeenSeenFlag
        }
    }
    return uniqueArr 
}
uniqueNames(["jason", "jason", "charles","mary"])