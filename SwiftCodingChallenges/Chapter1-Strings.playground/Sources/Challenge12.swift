import Foundation

// -----------------------------------------------------------------------------
// Question
// -----------------------------------------------------------------------------
// Write a function that accepts a string of words with a similar prefix,
// separated by spaces, and returns the longest substring that prefixes all words.
// -----------------------------------------------------------------------------

//public func challenge12 (input: String) -> String {
//    let words = input.components(separatedBy: .whitespacesAndNewlines)
//    var result = ""
//
//    let wordArrays = words.map { Array($0) }
//
//    var index = 0
//    while (true) {
//        for word in wordArrays {
//            if index >= word.count {
//                return result
//            }
//
//        }
//
//        let letter = wordArrays[0][index]
//        for word in wordArrays {
//            if letter != word[index] {
//                return result
//            }
//        }
//
//        result.append(letter)
//        index += 1
//    }
//}

public func challenge12 (input: String) -> String {
    let parts = input.components(separatedBy: " ")

    guard let first = parts.first else { return "" }
    
    var currentPrefix = ""
    var bestPrefix = ""
    
    for letter in first {
        currentPrefix.append(letter)
        
        for word in parts {
            if !word.hasPrefix(currentPrefix) {
                return bestPrefix
            }
        }
        
        bestPrefix = currentPrefix
    }
    
    return bestPrefix
}

