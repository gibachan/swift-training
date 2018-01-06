import Foundation

public func testAll() {
    // challenge16
    assert(challenge16(input: 1) == "1", failedComment(16))
    assert(challenge16(input: 2) == "2", failedComment(16))
    assert(challenge16(input: 3) == "Fizz", failedComment(16))
    assert(challenge16(input: 4) == "4", failedComment(16))
    assert(challenge16(input: 5) == "Buzz", failedComment(16))
    assert(challenge16(input: 15) == "Fizz Buzz", failedComment(16))
    
    // challenge17
    // FIXME: These are not good tests for random result.
    let value1 = challenge17(minimum: 1, maximum: 5)
    let value2 = challenge17(minimum: 8, maximum: 10)
    let value3 = challenge17(minimum: 12, maximum: 12)
    
    assert(value1 >= 1 && value1 <= 5, failedComment(17))
    assert(value2 >= 8 && value2 <= 10, failedComment(17))
    assert(value3 == 12, failedComment(17))
}

public func failedComment(_ number: Int) -> String {
    return "Challenge \(number) failed"
}

