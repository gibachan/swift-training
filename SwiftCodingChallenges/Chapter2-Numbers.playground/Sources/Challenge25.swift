import Foundation

// -----------------------------------------------------------------------------
// Calculate a square root by hand
// -----------------------------------------------------------------------------
// Write a function that returns the square root of a positive integer,
// rounded down to the nearest integer, without using sqrt().
// -----------------------------------------------------------------------------

public func challenge25(input: Int) -> Int {
    guard input > 0 else { return 0 }
    return Int(floor(pow(Double(input), 0.5)))
}

// Naive solution
public func challenge25a(input: Int) -> Int {
    guard input != 1 else { return 1 }
    
    for i in 0 ... input / 2 + 1 {
        if i * i > input {
            return i - 1
        }
    }
    
    return 0
}

// Binary search version of naive solution
public func challenge25b(input: Int) -> Int {
    guard input != 1 else { return 1 }
    
    var lowerBound = 0
    var upperBound = input / 2 + 1
    
    while lowerBound + 1 < upperBound {
        let middle = lowerBound + ((upperBound - lowerBound) / 2)
        let middleSquared = middle * middle
        
        if middleSquared == input {
            return middle
        } else if middleSquared < input {
            lowerBound = middle
        } else {
            upperBound = middle
        }
    }
    
    return lowerBound
}
