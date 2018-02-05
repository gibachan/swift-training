import Foundation

// -----------------------------------------------------------------------------
// Balanced brackets
// -----------------------------------------------------------------------------
// Write a function that accepts a string containing the characters (, [, {, <, >, }, ], and ) in any arrangement and frequency.
// It should return true if the brackets are opened and closed in the correct order, and if all brackets are closed.
// Any other input should false.
// -----------------------------------------------------------------------------

public func challenge58(input: String) -> Bool {
    let validBrackets = "([{<>}])"
    let validCharacterSet = CharacterSet(charactersIn: validBrackets).inverted
    guard input.rangeOfCharacter(from: validCharacterSet) == nil else { return false }
    
    let matchingBrackets: [Character: Character] = ["(": ")", "[": "]", "{": "}", "<": ">"]
    
    var usedBrackets = [Character]()
    for bracket in input {
        if matchingBrackets.keys.contains(bracket) {
            // Opening bracket
            usedBrackets.append(bracket)
        } else {
            // Closing bracket
            if let previousBracket = usedBrackets.popLast() {
                if matchingBrackets[previousBracket] != bracket {
                    return false
                }
            } else {
                return false
            }
        }
    }
    
    return usedBrackets.count == 0
}
