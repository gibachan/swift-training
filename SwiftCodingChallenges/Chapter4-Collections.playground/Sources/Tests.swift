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

    // challenge39
    assert(["a", "abc", "ab"].challenge39() == ["abc", "ab", "a"], failedComment(39))
    assert(["paul", "taylor", "adele"].challenge39() == ["taylor", "adele", "paul"], failedComment(39))
    assert([String]().challenge39() == [], failedComment(39))

    // challenge40
    var testArray40_1 = Array(1...100)
    testArray40_1.remove(at: 25)
    testArray40_1.remove(at: 20)
    testArray40_1.remove(at: 6)
    
    let testArray40_2 = Array(1...100)
    let testArray40_3 = [Int]()
    
    assert(challenge40c(array: testArray40_1) == [7, 21, 26], failedComment(40))
    assert(challenge40c(array: testArray40_2) == [], failedComment(40))
    assert(challenge40c(array: testArray40_3) == Array(1...100), failedComment(40))

    // challenge 41
    assert([1, 2, 3].challenge41() == 2, failedComment(41))
    assert([1, 2, 9].challenge41() == 2, failedComment(41))
    assert([1, 3, 5, 7, 9].challenge41() == 5, failedComment(41))
    assert([1, 2, 3, 4].challenge41() == 2.5, failedComment(41))
    assert([].challenge41() == nil, failedComment(41))
    
    // challenge 42
    assert([1, 2, 3].challenge42(indexOf: 1) == 0, failedComment(42))
    assert([1, 2, 3].challenge42(indexOf: 3) == 2, failedComment(42))
    assert([1, 2, 3].challenge42(indexOf: 5) == nil, failedComment(42))

    // challenge 43
    let list_43 = LinkedList<Character>()
    var previousNode_43: LinkedListNode<Character>? = nil
    
    for letter in "abcdefghijklmnopqrstuvwxyz" {
        let node = LinkedListNode(value: letter)
        if let predecessor = previousNode_43 {
            predecessor.next = node
        } else {
            list_43.start = node
        }
        previousNode_43 = node
    }

    assert(list_43.printNodes() == "a b c d e f g h i j k l m n o p q r s t u v w x y z", failedComment(43))
    
    // challenge 44
    let list_44_1 = createLinkedList(values: Array(1...5))
    let list_44_2 = createLinkedList(values: Array(1...4))
    let list_44_3 = createLinkedList(values: "ABCEDFGHIJKLMNOPQRSTUVWXYX".map { $0 })
    
    assert(list_44_1.centerNode?.value == 3, failedComment(44))
    assert(list_44_2.centerNode?.value == 3, failedComment(44))
    assert(list_44_3.centerNode?.value == "N", failedComment(44))

    
    // challenge 46
    assert([1, 2, 3].challenge46b { String($0) } == ["1", "2", "3"], failedComment(46))
    assert(["1", "2", "3"].challenge46b { Int($0)! } == [1, 2, 3], failedComment(46))

    // challenge 47
    assert([1, 2, 3].challenge47d() == 1, failedComment(47))
    assert(["q", "f", "k"].challenge47d() == "f", failedComment(47))
    assert([4096, 256, 16].challenge47d() == 16, failedComment(47))
    assert([String]().challenge47d() == nil, failedComment(47))
    
    // challenge 48
    var numbers = deque<Int>()
    numbers.pushFront(5)
    numbers.pushBack(8)
    numbers.pushBack(3)
    assert(numbers.count == 3, failedComment(47))
    assert(numbers.popFront()! == 5, failedComment(47))
    assert(numbers.popBack()! == 3, failedComment(47))
    assert(numbers.popFront()! == 8, failedComment(47))
    assert(numbers.popBack() == nil, failedComment(47))
}

public func failedComment(_ number: Int) -> String {
    return "Challenge \(number) failed"
}

public func createLinkedList<T>(values: [T]) -> LinkedList<T> {
    let list = LinkedList<T>()
    var previousNode: LinkedListNode<T>? = nil
    
    for value in values {
        let node = LinkedListNode(value: value)
        if let predecessor = previousNode {
            predecessor.next = node
        } else {
            list.start = node
        }
        previousNode = node
    }
    
    return list
}
