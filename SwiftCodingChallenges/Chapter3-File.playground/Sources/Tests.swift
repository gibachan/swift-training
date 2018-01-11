import Foundation

public func testAll() {
    // challenge27
    assert(challenge27(filename: resource("File27"), lineCount: 3) == "Twelfth Night, Othello, Macbeth", failedComment(27))
    assert(challenge27(filename: resource("File27"), lineCount: 100) == "Twelfth Night, Othello, Macbeth, King Lear, Julius Caesar, Hamlet, Cymbeline, Coriolanus, Antony And Cleopatra", failedComment(27))
    
    // challenge28
    let file28 = tempPath(to: "File28.txt")
    
    deleteFile(file28)
    assert(fileExists(file28) == false, failedComment(28))
    
    challenge28(log: "ABC", to: file28)
    assert(contents(file28).contains("ABC"), failedComment(28))
    
    challenge28(log: "def", to: file28)
    assert(contents(file28).contains("ABC") &&
        contents(file28).contains("def"), failedComment(28))
    
    deleteFile(file28)
}

public func failedComment(_ number: Int) -> String {
    return "Challenge \(number) failed"
}

public func resource(_ filename: String) -> String {
    return Bundle.main.path(forResource: filename, ofType: "txt")!
}

public func tempPath(to filename: String) -> String {
    return "\(NSTemporaryDirectory())\(filename)"
}

public func fileExists(_ path: String) -> Bool {
    return FileManager.default.fileExists(atPath: path)
}

public func deleteFile(_ path: String) {
    try? FileManager.default.removeItem(atPath: path)
}

public func contents(_ path: String) -> String {
    return (try? String(contentsOfFile: path)) ?? ""
}
