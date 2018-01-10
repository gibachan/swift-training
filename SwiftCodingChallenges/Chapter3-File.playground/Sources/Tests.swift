import Foundation

public func testAll() {
    // challenge27
//    assert(challenge27(input: 1) == "1", failedComment(16))
}

public func failedComment(_ number: Int) -> String {
    return "Challenge \(number) failed"
}

public func resource(_ filename: String) -> String {
    return Bundle.main.path(forResource: filename, ofType: "txt")!
}
