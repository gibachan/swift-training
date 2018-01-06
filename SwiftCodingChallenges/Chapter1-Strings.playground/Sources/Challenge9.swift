import Foundation

// -----------------------------------------------------------------------------
// Question
// -----------------------------------------------------------------------------
// Write a function that returns true if it is given a string that is an English pangram,
// ignoring letter case.
// -----------------------------------------------------------------------------

// This is not good idea. It allows non alphabetical letters.
//public func challenge9(input: String) -> Bool {
//    let lowercasedWithoutSpace = input.lowercased().filter { $0 != " " }
//    let set = Set(lowercasedWithoutSpace)
//    return set.count == 26
//}

public func challenge9(input: String) -> Bool {
    let set = Set(input.lowercased())
    let letters = set.filter { $0 >= "a" && $0 <= "z" }
    return letters.count == 26
}
