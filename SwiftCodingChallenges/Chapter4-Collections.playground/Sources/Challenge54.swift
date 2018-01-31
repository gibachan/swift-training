import Foundation

// -----------------------------------------------------------------------------
// Binary search trees
// -----------------------------------------------------------------------------
// Create a binary search tree data structure
// that can be initialized from an unordered array of comparable values,
// then write a method that returns whether the tree is balanced.
//
// Tip #1: There is more than one description of a balanced binary tree. For the purpose of this challenge,
// a binary tree is considered balanced when the height of both subtrees for every node differs by no more than 1.
//
// Tip #2: Once you complete this challenge, keep your code around because you’ll need it in the next one.
// -----------------------------------------------------------------------------

public class Node<T> {
    var key: T
    var left: Node<T>?
    var right: Node<T>?
    
    init(key: T) {
        self.key = key
    }
}

public class BinarySearchTree<T: Comparable> {
    public var root: Node<T>?
    
    public init(array: [T]) {
        for item in array {
            // this will be set to true when we've created a node from this item
            var placed = false
            
            if let rootNode = root {
                // we have a root node, so make it our tracker
                var tracker = rootNode
                
                while placed == false {
                    // if we're placeing an item that comes before our tracker
                    if item <= tracker.key {
                        // if we don't already have a left node
                        if tracker.left == nil {
                            // make this item our left node
                            tracker.left = Node(key: item)
                            // mark it as placed
                            placed = true
                        }
                        
                        // we already have a left node;
                        // make that the tracker so we can compare against it.
                        tracker = tracker.left!
                    } else {
                        // this item is greater than our tracker,
                        // so it needs to si on its right
                        
                        // if we don't already have a right node
                        if tracker.right == nil {
                            // make this item our right node
                            tracker.right = Node(key: item)
                            
                            // mark it as placed
                            placed = true
                        }
                        
                        // we already have a right node;
                        // make that the tracker so we can compare against it.
                        tracker = tracker.right!
                    }
                }
            } else {
                root = Node(key: item)
            }
        }
    }
}

extension BinarySearchTree: CustomStringConvertible {
    public var description: String {
        guard let first = root else { return "(Empty)" }
        
        var queue = [Node<T>]()
        queue.append(first)
        
        var output = ""
        
        while queue.count > 0 {
            var nodesAtCurrentLevel = queue.count
            while nodesAtCurrentLevel > 0 {
                let node = queue.removeFirst()
                output += "\(node.key)"
                
                if node.left != nil { queue.append(node.left!) }
                if node.right != nil { queue.append(node.right!) }
                
                nodesAtCurrentLevel -= 1
            }
            
            output += "\n"
        }
        
        return output
    }
}

extension BinarySearchTree {
    public func isBalanced() -> Bool {
        func minDepth(from node: Node<T>?) -> Int {
            guard let node = node else { return 0 }
            let returnValue = 1 + min(minDepth(from: node.left), minDepth(from: node.right))
            //            print("Got min depth \(returnValue) for \(node.key)")
            return returnValue
        }
        
        func maxDepth(from node: Node<T>?) -> Int {
            guard let node = node else { return 0 }
            let returnValue = 1 + max(maxDepth(from: node.left), maxDepth(from: node.right))
            //            print("Got max depth \(returnValue) for \(node.key)")
            return returnValue
        }
        
        guard let root = root else { return true }
        let difference = maxDepth(from: root) - minDepth(from: root)
        return difference <= 1
    }
}


