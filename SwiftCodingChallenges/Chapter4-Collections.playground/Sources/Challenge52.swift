import Foundation

// -----------------------------------------------------------------------------
// Sum an array of numbers
// -----------------------------------------------------------------------------
// Write one function that sums an array of numbers.
// The array might contain all integers, all doubles, or all floats.
// -----------------------------------------------------------------------------

public protocol MyNumeric {
    init()
    static func +(lhs: Self, rhs: Self) -> Self
}

extension Int: MyNumeric {}
extension Float: MyNumeric {}
extension Double: MyNumeric {}

public func challenge52a<T: MyNumeric>(numbers: [T]) -> T {
    return numbers.reduce(T(), +)
}


public func challenge52<T: Numeric>(numbers: [T]) -> T {
    return numbers.reduce(0) { $0 + $1 }
}


// Example how to use Accelerate
import Accelerate
public func challenge52c(numbers: [Double]) -> Double {
    var result: Double = 0.0
    vDSP_sveD(numbers, 1, &result, vDSP_Length(numbers.count))
    return result
}

