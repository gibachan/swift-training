import Foundation

// -----------------------------------------------------------------------------
// Question
// -----------------------------------------------------------------------------
// Write a function that accepts two String parameters,
// and returns true if they contain the same characters in any order taking into account letter case.
// -----------------------------------------------------------------------------

public func challenge3(input1: String, input2: String) -> Bool {
    let set1 = Array(input1)
    let set2 = Array(input2)

    guard set1.count == set2.count else { return false }
    
    for c in set1 {
        if set2.contains(c) == false {
            return false
        }
    }

    return true
}

// This is faster than challenge3.
public func challenge3b(input1: String, input2: String) -> Bool {
    let array1 = Array(input1)
    let array2 = Array(input2)
    return array1.sorted() == array2.sorted()
}

