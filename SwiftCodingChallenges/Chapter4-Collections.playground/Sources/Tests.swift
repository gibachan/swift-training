import Foundation

public func testAll() {
    // challenge37
    assert([5, 15, 55, 515].challenge37(count: "5") == 6, failedComment(37))
    assert([5, 15, 55, 515].challenge37(count: "1") == 2, failedComment(37))
    assert([55555].challenge37(count: "5") == 5, failedComment(37))
    assert([55555].challenge37(count: "1") == 0, failedComment(37))
 
    // challenge38
    assert([1, 2, 3, 4].challenge38(count: 3) == [1, 2, 3], failedComment(38))
    assert(["q", "f", "k"].challenge38(count: 10) == ["f", "k", "q"], failedComment(38))
    assert([256, 16].challenge38(count: 3) == [16, 256], failedComment(38))
    assert([String]().challenge38(count: 3) == [String](), failedComment(38))

}

public func failedComment(_ number: Int) -> String {
    return "Challenge \(number) failed"
}
