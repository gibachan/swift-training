import Foundation

// -----------------------------------------------------------------------------
// Generate a random number in a range
// -----------------------------------------------------------------------------
// Write a function that accepts positive minimum and maximum integers,
// and returns a random number between those two bounds, inclusive.
// -----------------------------------------------------------------------------

// arc4random_uniform() generates numbers form 0 up to an upper bound, it excludes the upper bound.
public func challenge17(minimum: Int, maximum: Int) -> Int {
    return Int(arc4random_uniform(UInt32(maximum - minimum + 1))) + minimum
}

