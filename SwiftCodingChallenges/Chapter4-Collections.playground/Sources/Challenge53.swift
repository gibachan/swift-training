import Foundation

// -----------------------------------------------------------------------------
// Linked lists with a loop
// -----------------------------------------------------------------------------
// Someone used the linked list you made previously,
// but they accidentally made one of the items link back to an earlier part of the list.
// As a result, the list can’t be traversed properly because it loops infinitely.
// 
// Your job is to write a function that accepts your linked list as its parameter,
// and returns the node at the start of the loop, i.e. the one that is linked back to.
// -----------------------------------------------------------------------------

extension LinkedList {
    
    // To make this method work correctly,
    // LinkedListNode<T> must conform Hashable
    public func challenge53() -> LinkedListNode<T>? {
        var currentNode = start
        
        var seen = Set<LinkedListNode<T>>()
        
        while let node = currentNode {
            if seen.contains(node) {
                return node
            } else {
                seen.insert(node)
                currentNode = node.next
            }
        }
        
        return nil
    }
}

extension LinkedList {
    public func getUniqueHashValue() -> Int {
        uniqueHashValue += 1
        return uniqueHashValue
    }
}

extension LinkedListNode: Hashable {
    public convenience init(value: T, hashValue: Int) {
        self.init(value: value)
        self.hashValue = hashValue
    }
    
    public static func ==(lhs: LinkedListNode, rhs: LinkedListNode) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
}
