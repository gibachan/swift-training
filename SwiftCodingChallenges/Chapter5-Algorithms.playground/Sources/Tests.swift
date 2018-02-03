import Foundation

public func testAll() {
    // challenge55
    assert([12, 5, 4, 9, 3, 2, 1].challenge55b() == [1, 2, 3, 4, 5, 9, 12], failedComment(55))
    assert(["f", "a", "b"].challenge55b() == ["a", "b", "f"], failedComment(55))
    assert([String]().challenge55b() == [], failedComment(55))
    
    // challenge 56
    assert([12, 5, 4, 9, 3, 2, 1].challenge56b() == [1, 2, 3, 4, 5, 9, 12], failedComment(56))
    assert(["f", "a", "b"].challenge56b() == ["a", "b", "f"], failedComment(56))
    assert([String]().challenge56b() == [], failedComment(56))

    // challenge 57
    assert(challenge57("clap", "slap") == true, failedComment(57))
    assert(challenge57("rum", "mud") == true, failedComment(57))
    assert(challenge57("pip", "did") == true, failedComment(57))
    assert(challenge57("carry", "baddy") == true, failedComment(57))
    assert(challenge57("cream", "lapse") == true, failedComment(57))
    assert(challenge57(123123, 456456) == true, failedComment(57))
    assert(challenge57(3.14159, 2.03048) == true, failedComment(57))
    assert(challenge57([1, 2, 1, 2, 3], [4, 5, 4, 5, 6]) == true, failedComment(57))
    
    assert(challenge57("carry", "daddy") == false, failedComment(57))
    assert(challenge57("did", "cad") == false, failedComment(57))
    assert(challenge57("maim", "same") == false, failedComment(57))
    assert(challenge57("curry", "flurry") == false, failedComment(57))
    assert(challenge57(112233, 112211) == false, failedComment(57))

}

public func failedComment(_ number: Int) -> String {
    return "Challenge \(number) failed"
}

