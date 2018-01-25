import Foundation

// -----------------------------------------------------------------------------
// Recreate min()
// -----------------------------------------------------------------------------
// Write an extension for all collections that reimplements the min() method.
// -----------------------------------------------------------------------------

extension Collection where Iterator.Element: Comparable {
    // Naive solution
    public func challenge47() -> Iterator.Element? {
        var min: Iterator.Element? = nil
        self.forEach { if min == nil { min = $0 } else { min = ($0 < min! ? $0 : min!) }}
        return min
    }
    
    // Remove optionality by guard statement at first.
    // Code is shorther & easier to read than naive solution.
    // However the first item in the collection is accessed 2 times
    // which is a little problem.
    public func challenge47b() -> Iterator.Element? {
        guard var lowest = self.first else { return nil }
        
        for item in self {
            if item < lowest {
                lowest = item
            }
        }
        
        return lowest
    }
    
    // Solved the problem where first item was accessed twice.
    // This is fastest solution.
    public func challenge47c() -> Iterator.Element? {
        var it = makeIterator()
        guard var lowest = it.next() else { return nil }
        
        while let item = it.next() {
            if item < lowest {
                lowest = item
            }
        }
        
        return lowest
    }
    
    // This is not fastest but shorter.
    // However it has same problem that is doubled access to first item.
    public func challenge47d() -> Iterator.Element? {
        guard let lowest = self.first else { return nil }
        return reduce(lowest) { $1 < $0 ? $1 : $0 }
    }
    
    // This solution solved the evaluationg one item twice.
    // But it also has the cost to convert an iterator to a sequence
    // that may be greater than the cost of evaluating one item twice.
    public func challenge47e() -> Iterator.Element? {
        var it = makeIterator()
        guard let lowest = it.next() else { return nil }
        return IteratorSequence(it).reduce(lowest) { $1 < $0 ? $1 : $0 }
    }
    
    // Sneaky solution
    // The code is shortest but has multiple comparisons.
    public func challenge48f() -> Iterator.Element? {
        return self.sorted().first
    }

}
