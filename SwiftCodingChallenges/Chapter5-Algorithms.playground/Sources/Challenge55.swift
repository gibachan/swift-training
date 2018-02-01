import Foundation

// -----------------------------------------------------------------------------
// Bubble sort
// -----------------------------------------------------------------------------
// Create an extension for arrays that sorts them using the bubble sort algorithm.
// -----------------------------------------------------------------------------

extension Array where Element: Comparable {
    public func challenge55a() -> [Element] {
        guard count > 1 else { return self }
        
        var returnValue = self
        var swapsMade: Bool
        
        repeat {
            // we're looping from scratch, so reset swapsMade to false
            swapsMade = false
            
            // loop over all items in the array, excluding the last one
            for index in 0 ..< returnValue.count - 1 {
                // pull out the current element and its successor
                let element = returnValue[index]
                let next = returnValue[index + 1]
                
                // if the current one is bigger than its successor…
                if (element > next) {
                    // swap them
                    returnValue.swapAt(index, index + 1)
                    
                    // and mark that we made a swap so the loop will repeat
                    swapsMade = true
                }
            }
        } while swapsMade == true
        
        // send back the sorted array
        return returnValue
    }
    
    
    public func challenge55b() -> [Element] {
        guard count > 0 else { return [Element]() }
        
        var returnValue = self
        var highestSortedIndex = count
        
        repeat {
            var lastSwapIndex = 0
            
            for index in 0 ..< highestSortedIndex - 1 {
                let element = returnValue[index]
                let next = returnValue[index + 1]
                
                if (element > next) {
                    returnValue.swapAt(index, index + 1)
                    lastSwapIndex = index + 1
                }
            }
            
            highestSortedIndex = lastSwapIndex
        } while highestSortedIndex != 0
        
        return returnValue
    }
}


