import Foundation

// -----------------------------------------------------------------------------
// Question
// -----------------------------------------------------------------------------
// Write a function that returns a string with each of its words reversed but in the original order,
// without using a loop.
// -----------------------------------------------------------------------------

public func challenge15 (input: String) -> String {
    let words = input.components(separatedBy: " ")
    let reversed = words.map { String($0.reversed()) }
    return reversed.joined(separator: " ")
}
