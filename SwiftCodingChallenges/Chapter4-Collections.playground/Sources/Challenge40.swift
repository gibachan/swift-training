import Foundation

// -----------------------------------------------------------------------------
// Missing numbers in array
// -----------------------------------------------------------------------------
// Create a function that accepts an array of unsorted numbers from 1 to 100
// where zero or more numbers might be missing, and returns an array of the missing numbers.
// -----------------------------------------------------------------------------

// Naive solution which is slow
public func challenge40(array: [Int]) -> [Int] {
    var result = [Int]()
    for i in 1...100 {
        if !array.contains(i) {
            result.append(i)
        }
    }
    return result
}

public func challenge40a(array: [Int]) -> [Int] {
    let input = Set<Int>(array)
    let diff = input.symmetricDifference(Set<Int>(1...100))
    return Array(diff).sorted()
}

// This is faster than naive solution due to Set.contains is O(n) operation
public func challenge40b(array: [Int]) -> [Int] {
    let correctArray = Array(1...100)
    let inputSet = Set(array)
    var missingNumbers = [Int]()
    
    for number in correctArray {
        if !inputSet.contains(number) {
            missingNumbers.append(number)
        }
    }
    return missingNumbers
}

// Little bit slower but clean and understandable
public func challenge40c(array: [Int]) -> [Int] {
    let inputSet = Set(array)
    let testSet = Set(1...100)
    return Array(testSet.subtracting(inputSet)).sorted()
}
