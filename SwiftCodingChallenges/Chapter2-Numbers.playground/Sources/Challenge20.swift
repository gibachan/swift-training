import Foundation

// -----------------------------------------------------------------------------
// Number is prime
// -----------------------------------------------------------------------------
// Write a function that accepts an integer as its parameter
// and returns true if the number is prime.
// -----------------------------------------------------------------------------

public func challenge20(number: Int) -> Bool {
    guard number >= 2 else { return false }
    
    for i in 2 ..< number {
        if number % i == 0 {
            return false
        }
    }
    
    return true
}

// This solution performs significantly faster.
public func challenge20b(number: Int) -> Bool {
    guard number >= 2 else { return false }
    guard number != 2 else { return true }
    
    let max = Int(ceil(sqrt(Double(number))))
    for i in 2 ... max {
        if number % i == 0 {
            return false
        }
    }
    return true
}

