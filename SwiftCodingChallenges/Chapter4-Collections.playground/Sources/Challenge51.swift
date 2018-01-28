import Foundation

// -----------------------------------------------------------------------------
// Reversing linked lists
// -----------------------------------------------------------------------------
// Expand your code from challenge 43
// so that it has a reversed() method that returns a copy of itself in reverse.
// -----------------------------------------------------------------------------

extension LinkedList {
    //    public func reversed() -> LinkedList<T> {
    //        var node = start
    //        var values = [T]()
    //        while node != nil {
    //            values.append(node!.value)
    //            node = node!.next
    //        }
    //
    //        values.reverse()
    //
    //        let list = LinkedList<T>()
    //        var prevNode: LinkedListNode<T>? = nil
    //        for value in values {
    //            let node = LinkedListNode(value: value)
    //            if let predecessor = prevNode {
    //                predecessor.next = node
    //            } else {
    //                list.start = node
    //            }
    //            prevNode = node
    //        }
    //
    //        return list
    //    }
    
    public func reverse() {
        var currentNode = start
        var newNext: LinkedListNode<T>? = nil
        
        while let node = currentNode {
            let next = node.next
            node.next = newNext
            newNext = node
            currentNode = next
        }
        
        start = newNext
    }
    
    public func copy() -> LinkedList<T> {
        let copy = LinkedList<T>()
        
        if let startNode = start {
            copy.start = LinkedListNode(value: startNode.value)
            var previousCopyNode = copy.start
            
            var currentNode = start?.next
            while let node = currentNode {
                let copyNode = LinkedListNode(value: node.value)
                previousCopyNode?.next = copyNode
                previousCopyNode = copyNode
                currentNode = currentNode?.next
            }
        }
        return copy
    }
    
    func reversed() -> LinkedList<T> {
        let copy = self.copy()
        copy.reverse()
        return copy
    }
}
