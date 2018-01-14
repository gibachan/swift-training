import Foundation

// -----------------------------------------------------------------------------
// Word frequency
// -----------------------------------------------------------------------------
// Write a function that accepts a filename on disk, loads it into a string,
// then returns the frequency of a word in that string, taking letter case into account.
// How you define “word” is worth considering carefully.
// -----------------------------------------------------------------------------

public func challenge32(filename: String, count: String) -> Int {
    guard let content = try? String(contentsOfFile: filename) else { return 0 }
    let words = content.components(separatedBy: [" ", ",", "\n"])
    return words.filter { $0 == count }.count
}

public func challenge32a(filename: String, count: String) -> Int {
    guard let inputString = try? String(contentsOfFile: filename) else { return 0 }
    
    var nonletters = CharacterSet.letters.inverted
    nonletters.remove("’")
    
    let allWords = inputString.components(separatedBy: nonletters)
    
    let wordsSet = NSCountedSet(array: allWords)
    return wordsSet.count(for: count)
}
