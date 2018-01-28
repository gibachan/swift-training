import Foundation

// -----------------------------------------------------------------------------
// Sum the even repeats
// -----------------------------------------------------------------------------
// Write a function that accepts a variadic array of integers and
// return the sum of all numbers that appear an even number of times.
// -----------------------------------------------------------------------------

public func challenge49(_ values: Int...) -> Int {
    var counts: [Int: Int] = [:]
    
    for value in values {
        if counts[value] == nil {
            counts[value] = 1
        } else {
            counts[value] = counts[value]! + 1
        }
    }
    
    var returnValue = 0
    
    for (value, count) in counts {
        if count % 2 == 0 {
            returnValue += value
        }
    }
    
    return returnValue
}

public func challenge49a(_ numbers: Int...) -> Int {
    let counted = NSCountedSet(array: numbers)
    var sum = 0
    
    for case let item as Int in counted {
        if counted.count(for: item) % 2 == 0 {
            sum += item
        }
    }
    
    return sum
}

// This would be slower than challenge49a due to typecasting 'as! [Int]'.
func challenge49b(_ numbers: Int...) -> Int {
    let counted = NSCountedSet(array: numbers)
    let array = counted.allObjects as! [Int]
    var sum = 0
    
    for item in array {
        if counted.count(for: item) % 2 == 2 {
            sum += item
        }
    }
    
    return sum
}
