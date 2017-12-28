import Foundation

// -----------------------------------------------------------------------------
// Question
// -----------------------------------------------------------------------------
// Write a function that accepts a String as its only parameter,
// and returns true if the string has only unique letters, taking letter case into account.
// -----------------------------------------------------------------------------

// This implementation does not scale.
// Because contains() is O(n) operation so that very long input makes it slow.
//public func challenge1(input: String) -> Bool {
//    var characters = [Character]()
//
//    for c in input {
//        if characters.contains(c) {
//            return false
//        }
//        characters.append(c)
//    }
//    return true
//}

public func challenge1(input: String) -> Bool {
    let characters = Set(input)
    return characters.count == input.count
}

