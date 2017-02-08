//: [Previous](@previous)

import Foundation

extension Array where Element: Comparable {
    func challenge55a() -> [Element] {
        // refuse to sort invalid arrays
        guard count > 1 else { return self }
        
        var returnValue = self
        var swapsMade: Bool
        
        repeat {
            // we're looping from scratch, so reset swapsMade to false
            swapsMade = false
            
            // loop over all items in the array, excluding the last one
            for i in 0..<returnValue.count - 1 {
                // pull out the current element and its successor
                let element = returnValue[i]
                let next = returnValue[i + 1]
                
                // if the current one is bigger than its successor...
                if element > next {
                    // swap them
                    swap(&returnValue[i], &returnValue[i + 1])
                    
                    // and mark that we made a swap so the loop will repeat
                    swapsMade = true
                }
            }
        } 			while swapsMade == true
        // send back the sorted array
        return returnValue
    }
    
    func challenge55b() -> [Element] {
        guard count > 0 else { return self }
        
        var returnValue = self
        var highestSortedIndex = count
        
        repeat {
            var lastSwapIndex = 0
            
            for i in 0..<highestSortedIndex - 1 {
                let element = returnValue[i]
                let next = returnValue[i + 1]
                
                if element > next {
                    print("before: \(returnValue)")
                    swap(&returnValue[i], &returnValue[i + 1])
                    lastSwapIndex = i + 1
                    print("after: \(returnValue)")
                }
            }
            highestSortedIndex = lastSwapIndex
        } while highestSortedIndex != 0
        return returnValue
    }
}