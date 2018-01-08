import Foundation

// -----------------------------------------------------------------------------
// Counting binary ones
// -----------------------------------------------------------------------------
// Create a function that accepts any positive integer
// and returns the next highest and next lowest number that has the same number of ones
// in its binary representation. If either number is not possible, return nil for it.
// -----------------------------------------------------------------------------

public func challenge21(number: Int) -> (nextHighest: Int?, nextLowest: Int?) {
    guard number >= 0 else { return (nil, nil) }
    
    let count = countOnes(number)
    var heighest: Int? = nil
    var lowest: Int? = nil
    
    // Search for heighest number which has same number of ones in its binary representation.
    for i in (number + 1) ... Int.max {
        if countOnes(i) == count {
            heighest = i
            break
        }
    }
    
    // Search for lowest number which has same number of ones in its binary representation.
    for i in stride(from: number - 1, to: 1, by: -1) {
        if countOnes(i) == count {
            lowest = i
            break
        }
    }
    
    return (heighest, lowest)
}

private func countOnes(_ number: Int) -> Int {
    let binaryNumber = String(number, radix: 2)
    return Array(binaryNumber).filter { $0 == "1" }.count
}

public func challenge21a(number: Int) -> (nextHighest: Int?, nextLowest: Int?) {
    func ones(in number: Int) -> Int {
        let currentBinary = String(number, radix: 2)
        return currentBinary.filter { (char: Character) -> Bool in char == "1" }.count
    }
    
    let targetOnes = ones(in: number)
    
    var nextHighest: Int? = nil
    var nextLowest: Int? = nil
    
    for i in number + 1 ... Int.max {
        if ones(in: i) == targetOnes {
            nextHighest = i
            break
        }
    }
    
    for i in (0 ..< number).reversed() {
        if ones(in: i) == targetOnes {
            nextLowest = i
            break
        }
    }
    return (nextHighest, nextLowest)
}
