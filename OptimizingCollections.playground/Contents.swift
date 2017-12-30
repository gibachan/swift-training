#if os(macOS) || os(iOS) || os(watchOS) || os(tvOS)
    import Darwin
#elseif os(Linux)
    import Glibc
#endif

import Foundation


// Use case of SortedArray
//var set = SortedArray<Int>()
//for i in (0..<22).shuffled() {
//    set.insert(2 * i)
//}
//
//print(set)
//print(set.contains(42))
//print(set.contains(13))
//
//let copy = set
//set.insert(13)
//
//print(set.contains(13))
//print(copy.contains(13))

//var set = OrderedSet<Int>()
//for i in (1 ... 20).shuffled() {
//    set.insert(i)
//}

//print(set)
//print(set.contains(7))
//print(set.contains(42))

//let copy = set
//set.insert(42)

//print(copy)
//print(set)

//struct Value: Comparable {
//    let value: Int
//    init(_ value: Int) { self.value = value }
//    
//    static func ==(left: Value, right: Value) -> Bool {
//        return left.value == right.value
//    }
//    
//    static func <(left: Value, right: Value) -> Bool {
//        return left.value < right.value
//    }
//}
//
//let value = Value(42)
//let a = value as AnyObject
//let b = value as AnyObject

//print(a.isEqual(b))
//print(a.hash)
//print(b.hash)


//var values = OrderedSet<Value>()
//(1 ... 20).shuffled().map(Value.init).forEach { values.insert($0) }
//print(values.contains(Value(7)))
//print(values.contains(Value(42)))


//let emptyTree: RedBlackTree<Int> = .empty
////print(emptyTree)
//
//let tinyTree: RedBlackTree<Int> = .node(.black, 42, .empty, .empty)
////print(tinyTree)
//
//let smallTree: RedBlackTree<Int> =
//    .node(.black, 2,
//        .node(.red, 1, .empty, .empty),
//        .node(.red, 3, .empty, .empty))
////print(smallTree)
//
//let bigTree: RedBlackTree<Int> =
//    .node(.black, 9,
//        .node(.red, 5,
//        .node(.black, 1, .empty, .node(.red, 4, .empty, .empty)),
//        .node(.black, 8, .empty, .empty)),
//        .node(.red, 12,
//        .node(.black, 11, .empty, .empty),
//        .node(.black, 16,
//        .node(.red, 14, .empty, .empty),
//        .node(.red, 17, .empty, .empty))))

//print(bigTree)

//var set2 = RedBlackTree<Int>.empty
//for i in (1 ... 20).shuffled() {
//    set2.insert(i)
//}
//print(set2)

//let filteredSet2 = set2.lazy.filter { $0 % 2 == 0 }.map { "\($0)" }.joined(separator: ",")
//print(filteredSet2)

// RedBlackTree2
//var set = RedBlackTree2<Int>()
//for i in (1 ... 20).shuffled() {
//    set.insert(i)
//}
//
//print(set)
//print(set.contains(13))
//print(set.contains(42))
//print(set.filter { $0 % 2 == 0 })



