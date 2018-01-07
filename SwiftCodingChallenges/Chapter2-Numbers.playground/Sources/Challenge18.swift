import Foundation

// -----------------------------------------------------------------------------
// Recreate the pow() function
// -----------------------------------------------------------------------------
// Create a function that accepts positive two integers,
// and raises the first to the power of the second.
// -----------------------------------------------------------------------------

public func challenge18(number: Int, power: Int) -> Int {
    guard number > 0, power > 0 else { return 0 }
    
    var result = 1
    for _ in 0 ..< power {
        result *= number
    }
    return result
}

public func challenge18b(number: Int, power: Int) -> Int {
    guard number > 0, power > 0 else { return 0 }
    
    if power == 1 { return number }
    
    return number * challenge18b(number: number, power: power - 1)
}


