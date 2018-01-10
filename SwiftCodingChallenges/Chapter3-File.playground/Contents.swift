import Foundation

let start = Date()

//testAll()

// challenge27
assert(challenge27(filename: resource("File27"), lineCount: 3) == "Twelfth Night, Othello, Macbeth", failedComment(27))
assert(challenge27(filename: resource("File27"), lineCount: 100) == "Twelfth Night, Othello, Macbeth, King Lear, Julius Caesar, Hamlet, Cymbeline, Coriolanus, Antony, Cleopatra", failedComment(27))


抜粋:: Paul Hudson  “Swift Coding Challenges”。 iBooks
print("Passed all tests: \(Date().timeIntervalSince(start)) sec")

