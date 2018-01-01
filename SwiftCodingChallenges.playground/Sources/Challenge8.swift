import Foundation

// -----------------------------------------------------------------------------
// Question
// -----------------------------------------------------------------------------
// Write a function that accepts two strings, and returns true if one string is rotation of the other,
// taking letter case into account.
// -----------------------------------------------------------------------------

//public func challenge8(input1: String, input2: String) -> Bool {
//    let count = input1.count
//    var str = input1
//    for _ in 0 ..< count {
//        let last = str.removeLast()
//        str.insert(last, at: str.startIndex)
//        if str == input2 {
//            return true
//        }
//    }
//
//    return false
//}

public func challenge8(input1: String, input2: String) -> Bool {
    guard input1.count == input2.count else { return false }
    
    let combined = input1 + input1
    return combined.contains(input2)
}
