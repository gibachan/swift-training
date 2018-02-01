import Foundation

public func testAll() {
    // challenge55
    assert([12, 5, 4, 9, 3, 2, 1].challenge55b() == [1, 2, 3, 4, 5, 9, 12], failedComment(55))
    assert(["f", "a", "b"].challenge55b() == ["a", "b", "f"], failedComment(55))
    assert([String]().challenge55b() == [], failedComment(55))
}

public func failedComment(_ number: Int) -> String {
    return "Challenge \(number) failed"
}

