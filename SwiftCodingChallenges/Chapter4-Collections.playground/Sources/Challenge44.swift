import Foundation

// -----------------------------------------------------------------------------
// Linked list mid-point
// -----------------------------------------------------------------------------
// Extend your linked list class with a new method that returns
// the node at the mid point of the linked list using no more than one loop.
// -----------------------------------------------------------------------------

extension LinkedList {
    //    public var size: Int {
    //        guard start != nil else { return 0 }
    //        var size = 0
    //        var node: LinkedListNode<T>? = start
    //        while node != nil {
    //            node = node?.next
    //            size += 1
    //        }
    //        return size
    //    }
    //
    //    public func challenge44() -> LinkedListNode<T>? {
    //        let size = self.size
    //        if size == 0 { return nil }
    //
    //        let middle = size / 2
    //        var counter = 0
    //        var node: LinkedListNode<T>? = start
    //        while node != nil {
    //            if counter == middle {
    //                break
    //            }
    //            node = node?.next
    //            counter += 1
    //        }
    //        return node
    //    }
    
    public var centerNode: LinkedListNode<T>? {
        var slow = start
        var fast = start
        while fast != nil && fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }
        return slow
    }
}
