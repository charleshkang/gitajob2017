//: [Previous](@previous)

import Foundation

extension Array where Element: Comparable {
    func challenge56a() -> [Element] {
        guard count > 1 else { return self }
        
        var returnValue = [Element]()
        
        for unsorted in self {
            if returnValue.count == 0 {
                returnValue.append(unsorted)
            } else {
                for (index, sorted) in returnValue.enumerated() {
                    print("unsorted: \(unsorted) and sorted: \(sorted)")
                    print("returnValue: \(returnValue)")
                    if unsorted < sorted {
                        returnValue.insert(unsorted, at: index)
                        print("unsorted: \(unsorted) and sorted: \(sorted)")
                        print("returnValue: \(returnValue)")
                        break
                    }
                }
            }
        }
        return returnValue
    }
    
    func challenge56b() -> [Element] {
        guard count > 1 else { return self }
        
        var returnValue = self
        
        for i in 1..<count {
            var currentItemIndex = i
            
            // take a copy of the current item
            let itemToPlace = returnValue[currentItemIndex]
            
            // keep going until we're at the start of the array, or find an item that's greater or equal to us
            while currentItemIndex > 0 && itemToPlace < returnValue[currentItemIndex - 1] {
                // move this item to the right
                returnValue[currentItemIndex] = returnValue[currentItemIndex - 1]
                currentItemIndex -= 1
            }
            // place our tem into its newly sorted place
            returnValue[currentItemIndex] = itemToPlace
        }
        return returnValue
    }
}