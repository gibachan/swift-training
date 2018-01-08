import Foundation

// -----------------------------------------------------------------------------
// Binary reverse
// -----------------------------------------------------------------------------
// Create a function that accepts an unsigned 8-bit integer and returns its binary reverse,
// Padded so that it holds precisely eight binary digits.
// -----------------------------------------------------------------------------

public func challenge22(number: UInt) -> UInt {
    var binary = String(number, radix: 2)

    while binary.count < 8 {
        binary = "0\(binary)"
    }
    
    return UInt(String(binary.reversed()), radix: 2)!
}

public func challenge22b(number: UInt) -> UInt {
    let binary = String(number, radix: 2)
    let paddingAmount = 8 - binary.count
    let paddingBinary = String(repeating: "0", count: paddingAmount) + binary
    let reversedBinary = String(paddingBinary.reversed())
    return UInt(reversedBinary, radix: 2)!
}

