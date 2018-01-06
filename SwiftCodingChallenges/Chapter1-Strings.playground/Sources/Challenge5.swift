import Foundation

// -----------------------------------------------------------------------------
// Question
// -----------------------------------------------------------------------------
// Write a function that accepts a string,
// and returns how many times a specific character appears, taking case into account.
// -----------------------------------------------------------------------------

public func challenge5(input: String, find: Character) -> Int {
    var counter = 0
    input.forEach { if $0 == find { counter += 1 } }
    return counter
}

// This code is short and clear.
// But it runs about 10% slower than for-loop solution.
func challenge5b(input: String, count: Character) -> Int {
    return input.reduce(0) { $1 == count ? $0 + 1 : $0 }
}


