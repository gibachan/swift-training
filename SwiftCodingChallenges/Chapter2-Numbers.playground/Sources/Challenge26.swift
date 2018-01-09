import Foundation

// -----------------------------------------------------------------------------
// Subtract without subtract
// -----------------------------------------------------------------------------
// Create a function that subtracts one positive integer from another, without using -.
// -----------------------------------------------------------------------------

public func challenge26(subtract: Int, from: Int) -> Int {
    return from + (~subtract + 1)
}


