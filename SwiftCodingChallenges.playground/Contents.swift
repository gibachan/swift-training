import Foundation

//testAll()


func testAll() {
    // challenge1
    assert(challenge1(input: "No duplicates") == true, failedComment(1))
    assert(challenge1(input: "abcdefghijklmnopqrstuvwxyz") == true, failedComment(1))
    assert(challenge1(input: "AaBbCc") == true, failedComment(1))
    assert(challenge1(input: "Hello, world") == false, failedComment(1))
    
    // challenge2
    assert(challenge2(input: "rotator") == true, failedComment(2))
    assert(challenge2(input: "Rats live on no evil star") == true, failedComment(2))
    assert(challenge2(input: "Never odd or even") == false, failedComment(2))
    assert(challenge2(input: "Hello, world") == false, failedComment(2))
    
    // challenge3
    assert(challenge3(input1: "abca", input2: "abca") == true, failedComment(3))
    assert(challenge3(input1: "abc", input2: "cba") == true, failedComment(3))
    assert(challenge3(input1: "a1 b2", input2: "b1 a2") == true, failedComment(3))
    assert(challenge3(input1: "abc", input2: "abca") == false, failedComment(3))
    assert(challenge3(input1: "abc", input2: "Abc") == false, failedComment(3))
    assert(challenge3(input1: "abc", input2: "cbAa") == false, failedComment(3))
    
    print("All test passes!!")
}

func failedComment(_ number: Int) -> String {
    return "Challenge \(number) failed"
}
