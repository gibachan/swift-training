import Foundation

// -----------------------------------------------------------------------------
// Question
// -----------------------------------------------------------------------------
// Write a function that accepts a string as input,
// then returns how often each letter is repeated in a single run, taking case into account.
// -----------------------------------------------------------------------------

//public func challenge13 (input: String) -> String {
//    var result = ""
//    var previousLetter: Character = " "
//    var counter = 1
//
//    for letter in input {
//        if result.isEmpty {
//            result.append(letter)
//            previousLetter = letter
//            continue
//        }
//
//        if letter == previousLetter {
//            counter += 1
//        } else {
//            result.append("\(counter)")
//            counter = 1
//            result.append(letter)
//        }
//        previousLetter = letter
//    }
//
//    if counter > 1 {
//        result.append("\(counter)")
//    }
//
//    return result
//
//}

public func challenge13 (input: String) -> String {
    var returnValue = ""
    var letterCounter = 0
    var letterArray = Array(input)
    
    for i in 0 ..< letterArray.count {
        letterCounter += 1
        
        if i + 1 == letterArray.count || letterArray[i] != letterArray[i + 1] {
            returnValue += "\(letterArray[i])\(letterCounter)"
            letterCounter = 0
        }
    }
    return returnValue
}
