import Foundation

// -----------------------------------------------------------------------------
// Linked lists
// -----------------------------------------------------------------------------
// Create a linked list of lowercase English alphabet letters,
// along with a method that traverses all nodes and prints their letters on a single line separated by spaces.
// -----------------------------------------------------------------------------

public class LinkedListNode<T> {
    public var value: T
    public var next: LinkedListNode?
    
    public init(value: T) {
        self.value = value
    }
}

public class LinkedList<T> {
    public var start: LinkedListNode<T>?
    
    public init() {}
}

extension LinkedList {
    public func printNodes() -> String {
        var result = ""
        var currentNode: LinkedListNode<T>? = start
        while let node = currentNode {
            if !result.isEmpty {
                result += " "
            }
            result += "\(node.value)"
            // print(node.value, terminator: " ")
            currentNode = node.next
        }
        return result
    }
}


