import Foundation

// -----------------------------------------------------------------------------
// Insertion sort
// -----------------------------------------------------------------------------
// Create an extension for arrays that sorts them using the insertion sort algorithm.
//
// Tip: An insertion sort creates a new, sorted array by removing items individually
// from the input array and placing them into the correct position in the new array.
// -----------------------------------------------------------------------------

// !! Insertion sort is the preferred sorting algorithm for arrays with fewer than 20 items and
// is used by Swift itself

extension Array where Element: Comparable {
    // Simple implementation of insertion sort
    public func challenge56a() -> [Element] {
        guard count > 1 else { return self }
        
        var returnValue = [Element]()
        
        for unsorted in self {
            if returnValue.count == 0 {
                returnValue.append(unsorted)
            } else {
                var placed = false
                for (index, sorted) in returnValue.enumerated() {
                    if unsorted < sorted {
                        returnValue.insert(unsorted, at: index)
                        placed = true
                        break
                    }
                }
                
                if !placed {
                    returnValue.append(unsorted)
                }
            }
        }
        
        return returnValue
    }
    
    // Faster implementation of insertion sort
    public func challenge56b() -> [Element] {
        guard count > 1 else { return self }
        
        var returnValue = self
        
        for i in 1 ..< count {
            var currentItemIndex = i
            
            let itemToPlace = returnValue[currentItemIndex]
            
            while currentItemIndex > 0 && itemToPlace < returnValue[currentItemIndex - 1] {
                returnValue[currentItemIndex] = returnValue[currentItemIndex - 1]
                currentItemIndex -= 1
            }
            
            returnValue[currentItemIndex] = itemToPlace
        }
        
        return returnValue
    }
}
