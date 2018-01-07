import Foundation

// -----------------------------------------------------------------------------
// Swap two numbers
// -----------------------------------------------------------------------------
// Swap two positive variable integers, a and b, without using a temporary variable.
// -----------------------------------------------------------------------------

public func challenge19(a: inout Int, b: inout Int) {
    (a, b) = (b, a)
}

// Use global swap() function
public func challenge19b(a: inout Int, b: inout Int) {
    swap(&a, &b)
}

// Use bit manipulation
public func challenge19c(a: inout Int, b: inout Int) {
    a = a ^ b
    b = a ^ b
    a = a ^ b
}



