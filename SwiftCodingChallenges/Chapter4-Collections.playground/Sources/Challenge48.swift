import Foundation

// -----------------------------------------------------------------------------
// Implement a deque data structure
// -----------------------------------------------------------------------------
// Create a new data type that models a double-ended queue using generics, or deque.
// You should be able to push items to the front or back,
// pop them from the front or back, and get the number of items.
// -----------------------------------------------------------------------------

public struct deque<T> {
    var elements: [T] = []
    
    var count: Int {
        return elements.count
    }
    
    mutating func pushFront(_ element: T) {
        elements.insert(element, at: 0)
    }
    
    mutating func pushBack(_ element: T) {
        elements.append(element)
    }
    
    //    mutating func popFront() -> T? {
    //        guard !elements.isEmpty else { return nil }
    //        defer { elements.remove(at: 0) }
    //        return elements.first
    //    }
    
    // Better for readability
    mutating func popFront() -> T? {
        if elements.isEmpty {
            return nil
        } else {
            return elements.removeFirst()
        }
    }
    
    mutating func popBack() -> T? {
        guard !elements.isEmpty else { return nil }
        return elements.popLast()
    }
}
