import Foundation

// -----------------------------------------------------------------------------
// Count the largest range
// -----------------------------------------------------------------------------
// Write a function that accepts an array of positive and negative numbers and
// returns a closed range containing the position of the contiguous positive numbers
// that sum to the highest value, or nil if nothing were found.
// -----------------------------------------------------------------------------

public func challenge50(_ numbers: [Int]) -> CountableClosedRange<Int>? {
    var bestRange: CountableClosedRange<Int>? = nil
    var bestSum = 0
    
    // These track the current sequence of positive integers
    var currentStart: Int? = nil
    var currentSum = 0
    
    for (index, number) in numbers.enumerated() {
        if number > 0 {
            currentStart = currentStart ?? index
            currentSum += number
            
            if currentSum > bestSum {
                bestRange = currentStart! ... index
                bestSum = currentSum
            }
        } else {
            currentSum = 0
            currentStart = nil
        }
    }
    return bestRange
}
