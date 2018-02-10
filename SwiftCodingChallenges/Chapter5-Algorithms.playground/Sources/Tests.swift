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

    // challenge 58
    assert(challenge58(input: "()") == true, failedComment(58))
    assert(challenge58(input: "([])") == true, failedComment(58))
    assert(challenge58(input: "([])(<{}>)") == true, failedComment(58))
    assert(challenge58(input: "([]{}<[{}]>)") == true, failedComment(58))
    assert(challenge58(input: "}{") == false, failedComment(58))
    assert(challenge58(input: "([)]") == false, failedComment(58))
    assert(challenge58(input: "([)") == false, failedComment(58))
    assert(challenge58(input: "([") == false, failedComment(58))
    assert(challenge58(input: "[<<<{}>>]") == false, failedComment(58))
    assert(challenge58(input: "hello") == false, failedComment(58))

    // challenge 59
    assert([12, 5, 4, 9, 3, 2, 1].challenge59a() == [1, 2, 3, 4, 5, 9, 12], failedComment(59))
    assert(["f", "a", "b"].challenge59a() == ["a", "b", "f"], failedComment(59))
    assert([String]().challenge59a() == [], failedComment(59))

    // challenge 60
    assert(challenge60b([["X", "", "O"], ["", "X", "O"], ["", "", "X"]]) == true, failedComment(60))
    assert(challenge60b([["X", "", "O"], ["X", "", "O"], ["X", "", ""]]) == true, failedComment(60))
    assert(challenge60b([["", "X", ""], ["O", "X", ""], ["O", "X", ""]]) == true, failedComment(60))
    assert(challenge60b([["", "X", ""], ["O", "X", ""], ["O", "", "X"]]) == false, failedComment(60))
    assert(challenge60b( [["", "", ""], ["", "", ""], ["", "", ""]]) == false, failedComment(60))

    // challenge 61
    assert(challenge61(upTo: 10) == [2, 3, 5, 7], failedComment(61))
    assert(challenge61(upTo: 11) == [2, 3, 5, 7], failedComment(61))
    assert(challenge61(upTo: 12) == [2, 3, 5, 7, 11], failedComment(61))

}

public func failedComment(_ number: Int) -> String {
    return "Challenge \(number) failed"
}

