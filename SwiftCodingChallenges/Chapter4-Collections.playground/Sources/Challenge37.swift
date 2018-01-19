import Foundation

// -----------------------------------------------------------------------------
// Count the numbers
// -----------------------------------------------------------------------------
// Write an extension for collections of integers
// that returns the number of times a specific digit appears in any of its numbers.
// -----------------------------------------------------------------------------

extension Collection where Iterator.Element == Int {
    public func challenge37(count: Character) -> Int {
        var result = 0
        forEach {
            let numbers = String($0).filter { $0 == count }
            result += numbers.count
        }
        return result
    }
}

extension Collection where Iterator.Element == Int {
    public func challenge37a(count: Character) -> Int {
        var total = 0
        
        for item in self {
            let str = String(item)
            
            for letter in str {
                if letter == count {
                    total += 1
                }
            }
        }
        return 0
    }
    
    // Much shorter but bit slower solution
    public func challenge37b(count: Character) -> Int {
        return self.reduce(0) {
            $0 + String($1).filter { (char: Character) -> Bool in char == count }.count
        }
    }
}
