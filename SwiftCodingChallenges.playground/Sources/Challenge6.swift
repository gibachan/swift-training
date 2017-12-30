import Foundation

// -----------------------------------------------------------------------------
// Question
// -----------------------------------------------------------------------------
// Write a function that accepts a string as its input,
// and returns the same string just with duplicate letters removed”
// -----------------------------------------------------------------------------

// It takes 0.0077sec for running 3 tests.
//public func challenge6(input: String) -> String {
//    var output = ""
//    var characters = [Character]()
//
//    for c in input {
//        if !characters.contains(c) {
//            output += "\(c)"
//            characters.append(c)
//        }
//    }
//
//    return output
//}

// It takes 0.008sec for running 3 tests.
// Much faster!
public func challenge6(input: String) -> String {
    return input.reduce("") { $0.contains($1) ? $0 : "\($0)\($1)" }
}

// This takes 0.026sec.
//public func challenge6(input: String) -> String {
//    let array = input.map { String($0) }
//    let set = NSOrderedSet(array: array)
//    let letters = Array(set) as! Array<String>
//    return letters.joined()
//}

// Takes 0.011sec. Slower than others but it clears its intension by filter.
//public func challenge6(input: String) -> String {
//    var used = [Character: Bool]()
//
//    let result = input.filter { used.updateValue(true, forKey: $0) == nil }
//
//    return String(result)
//}


