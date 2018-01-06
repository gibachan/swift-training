import Foundation

// -----------------------------------------------------------------------------
// Question
// -----------------------------------------------------------------------------
// Write a function that prints all possible permutations of a given input string.
// A string permutation is any given rearrangement of its letters, for example “boamtw” is a permutation of “wombat”.
// -----------------------------------------------------------------------------

public func challenge14 (input: String) -> [String] {
    let array = Array(input)
    var result: [String] = []

    for i in 0 ..< array.count {
        let taken = takeLetter(input: input, index: i)
        let results = challenge14(input: taken.remainder)
        if taken.remainder == "" {
            result.append(taken.letter)
        } else {
            for r in results {
                result.append("\(taken.letter)\(r)")
            }
        }
    }

    return result
}

private func takeLetter(input: String, index: Int) -> (letter: String, remainder: String) {
    var str = Array(input)
    let letter = String(str[index])
    str.remove(at: index)
    return (letter, String(str))
}

//public func challenge14(input: String, current: String = "") {
//    let length = input.count
//    let strArray = Array(input)
//
//    if length == 0 {
//        // There is nothing left to re-arrange; print the result
//        print(current)
//        print("*****")
//    } else {
//        print(current)
//
//        // loop through every character
//        for i in 0 ..< length {
//            let left = String(strArray[0 ..< i])
//            let right = String(strArray[i + 1 ..< length])
//
//            // put those two together and carry on
//            challenge14(input: left + right, current: current + String(strArray[i]))
//        }
//
//    }
//
//}



