import Foundation

// -----------------------------------------------------------------------------
// Isomorphic values
// -----------------------------------------------------------------------------
// Write a function that accepts two values and returns true if they are isomorphic.
// That is, each part of the value must map to precisely one other, but that might be itself.”
//
// Tip: Strings A and B are considered isomorphic if you can replace all instances of each letter with another.
// For example, “tort” and “pump” are isomorphic, because you can replace both Ts with a P, the O with a U,
// and the R with an M. For integers you compare individual digits, so 1231 and 4564 are isomorphic numbers.
// For arrays you compare elements, so [1, 2, 1] and [4, 8, 4] are isomorphic.
// -----------------------------------------------------------------------------

public func challenge57(_ firstValue: Any, _ secondValue: Any) -> Bool {
    let first = String(describing: firstValue)
    let second = String(describing: secondValue)
    
    guard first.count == second.count else { return false }
    
    var characterMap = [Character: Character]()
    let firstArray = Array(first)
    let secondArray = Array(second)
    
    for (index, character) in firstArray.enumerated() {
        let otherCharacter = secondArray[index]
        
        if let currentMapping = characterMap[character] {
            if currentMapping != otherCharacter {
                return false
            }
        } else {
            if characterMap.values.contains(otherCharacter) {
                return false
            }
            
            characterMap[character] = otherCharacter
        }
    }
    
    return true
}
