import Foundation
import UIKit

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
    
    // challenge 62
    var points = [(first: CGPoint, second: CGPoint)]()
    points.append((first: CGPoint.zero, second: CGPoint(x: 0, y: -100)))
    points.append((first: CGPoint.zero, second: CGPoint(x: 100, y: -100)))
    points.append((first: CGPoint.zero, second: CGPoint(x: 100, y: 0)))
    points.append((first: CGPoint.zero, second: CGPoint(x: 100, y: 100)))
    points.append((first: CGPoint.zero, second: CGPoint(x: 0, y: 100)))
    points.append((first: CGPoint.zero, second: CGPoint(x: -100, y: 100)))
    points.append((first: CGPoint.zero, second: CGPoint(x: -100, y: 0)))
    points.append((first: CGPoint.zero, second: CGPoint(x: -100, y: -100)))
    
    assert(challenge62(points: points) == [0.0, 45.0, 90.0, 135.0, 180.0, 225.0, 270.0, 315.0], failedComment(62))

    // challenge 63
    // import GameplayKit
    //let random = GKMersenneTwisterRandomSource(seed: 1)
    //var grid = (1...10).map { _ in (1...10).map { _ in Int(random.nextInt(upperBound: 2)) } }
    
    let input63 = [
        [0, 0, 0, 0, 0, 1, 0, 0, 1, 1],
        [0, 1, 1, 0, 0, 0, 0, 1, 0, 0],
        [0, 1, 0, 0, 0, 0, 0, 0, 1, 1],
        [1, 0, 1, 0, 0, 1, 1, 0, 0, 0],
        [1, 0, 1, 0, 1, 1, 1, 1, 1, 0],
        [1, 0, 1, 1, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 1, 1, 1, 0, 1, 1],
        [1, 1, 1, 0, 0, 1, 1, 1, 1, 1],
        [1, 1, 0, 1, 1, 1, 1, 0, 0, 0],
        [0, 1, 1, 0, 0, 1, 0, 1, 1, 1],
        ]
    var input63b = input63

    let output63 = [
        [5, 5, 5, 5, 5, 1, 5, 5, 1, 1],
        [5, 1, 1, 5, 5, 5, 5, 1, 0, 0],
        [5, 1, 5, 5, 5, 5, 5, 5, 1, 1],
        [1, 0, 1, 5, 5, 1, 1, 5, 5, 5],
        [1, 0, 1, 5, 1, 1, 1, 1, 1, 5],
        [1, 0, 1, 1, 5, 5, 5, 5, 5, 5],
        [0, 0, 0, 0, 1, 1, 1, 5, 1, 1],
        [1, 1, 1, 0, 0, 1, 1, 1, 1, 1],
        [1, 1, 0, 1, 1, 1, 1, 0, 0, 0],
        [0, 1, 1, 0, 0, 1, 0, 1, 1, 1]
    ]
    
    assert(challenge63a(fill: 5, in: input63, at: (x: 2, y: 0)).description == output63.description, failedComment(63))
    challenge63b(fill: 5, in: &input63b, at: (x: 2, y: 0))
    assert(input63b.description == output63.description, failedComment(63))
    
}

public func failedComment(_ number: Int) -> String {
    return "Challenge \(number) failed"
}

