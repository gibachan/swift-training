import Foundation

// -----------------------------------------------------------------------------
// Question
// -----------------------------------------------------------------------------
// Write a function that accepts a String as its only parameter,
// and returns true if the string reads the same when reversed, ignoring case.”
// -----------------------------------------------------------------------------

public func challenge2(input: String) -> Bool {
    let lowercased = input.lowercased()
    let reversed = String(lowercased.reversed())
    return lowercased == reversed
}

// Another answerAnother
//public func challenge2(input: String) -> Bool {
//    let lowercase = input.lowercased()
//    return lowercase.reversed() == Array(lowercase)
//}

