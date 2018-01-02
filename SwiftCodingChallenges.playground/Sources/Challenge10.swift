import Foundation

// -----------------------------------------------------------------------------
// Question
// -----------------------------------------------------------------------------
// Given a string in English, return a tuple containing the number of vowels and consonants.
// Vowels are the letters, A, E, I, O, and U;
// consonants are the letters B, C, D, F, G, H, J, K, L, M, N, P, Q, R, S, T, V, W, X, Y, Z.
// -----------------------------------------------------------------------------

public func challenge10 (input: String) -> (vowels: Int, consonants: Int) {
    let vowels = "aeiou"
    let consonants = "bcdfghjklmnpqrstvwxyz"
    var result = (vowels: 0, consonants: 0)

    for c in input.lowercased() {
        if vowels.contains(c) {
            result.vowels += 1
        } else if consonants.contains(c) {
            result.consonants += 1
        }
    }

    return result
}

public func challenge10a(input: String) -> (vowels: Int, consonants: Int) {
    let vowels = CharacterSet(charactersIn: "aeiou")
    let consonants = CharacterSet(charactersIn: "bcdfghjklmnpqrstvwxyz")
    
    var vowelCount = 0
    var consonantCount = 0
    
    for letter in input.lowercased() {
        let stringLetter = String(letter)
        if stringLetter.rangeOfCharacter(from: vowels) != nil {
            vowelCount += 1
        } else if stringLetter.rangeOfCharacter(from: consonants) != nil {
            consonantCount += 1
        }
    }

    return (vowelCount, consonantCount)
}
