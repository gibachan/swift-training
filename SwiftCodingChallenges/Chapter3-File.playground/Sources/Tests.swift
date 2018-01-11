import Foundation

public func testAll() {
    // challenge27
    assert(challenge27(filename: resource("File27"), lineCount: 3) == "Twelfth Night, Othello, Macbeth", failedComment(27))
    assert(challenge27(filename: resource("File27"), lineCount: 100) == "Twelfth Night, Othello, Macbeth, King Lear, Julius Caesar, Hamlet, Cymbeline, Coriolanus, Antony And Cleopatra", failedComment(27))
}

public func failedComment(_ number: Int) -> String {
    return "Challenge \(number) failed"
}

public func resource(_ filename: String) -> String {
    return Bundle.main.path(forResource: filename, ofType: "txt")!
}
