import Foundation

public func testAll() {
    // challenge16
    assert(challenge16(input: 1) == "1", failedComment(16))
    assert(challenge16(input: 2) == "2", failedComment(16))
    assert(challenge16(input: 3) == "Fizz", failedComment(16))
    assert(challenge16(input: 4) == "4", failedComment(16))
    assert(challenge16(input: 5) == "Buzz", failedComment(16))
    assert(challenge16(input: 15) == "Fizz Buzz", failedComment(16))
    
}

public func failedComment(_ number: Int) -> String {
    return "Challenge \(number) failed"
}

