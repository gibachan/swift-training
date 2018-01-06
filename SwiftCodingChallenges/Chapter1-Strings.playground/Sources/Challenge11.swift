import Foundation

// -----------------------------------------------------------------------------
// Question
// -----------------------------------------------------------------------------
// Write a function that accepts two strings,
// and returns true if they are identical in length but have no more than three different letters,
// taking case and string order into account.
// -----------------------------------------------------------------------------

//public func challenge11 (input1: String, input2: String) -> Bool {
//    guard input1.count == input2.count else { return false }
//
//    var counter = 0
//    var difference = 0
//    while counter < input1.count {
//        let index1 = input1.index(input1.startIndex, offsetBy: counter)
//        let index2 = input2.index(input2.startIndex, offsetBy: counter)
//
//        if input1[index1] != input2[index2] {
//            difference += 1
//        }
//
//        if difference > 3 {
//            return false
//        }
//
//        counter += 1
//    }
//
//    return true
//}

public func challenge11 (input1: String, input2: String) -> Bool {
    guard input1.count == input2.count else { return false }
    
    let firstArray = Array(input1)
    let secondArray = Array(input2)

    var difference = 0
    
    for (index, letter) in firstArray.enumerated() {
        if secondArray[index] != letter {
            difference += 1
        }
        
        if difference == 4 {
            return false
        }
    }

    return true
}
