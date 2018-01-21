import Foundation

// -----------------------------------------------------------------------------
// Find the median
// -----------------------------------------------------------------------------
// Write an extension to collections that accepts an array of Int
// and returns the median average, or nil if there are no values.
// -----------------------------------------------------------------------------

extension Collection where Iterator.Element == Int {
    public func challenge41() -> Double? {
        guard self.isEmpty == false else { return nil }
        
        let sorted = self.sorted()
        var median: Double
        let middle = sorted.count / 2
        if self.count % 2 == 0 {
            median = Double(sorted[middle] + sorted[middle - 1]) / 2.0
        } else {
            median = Double(sorted[middle])
        }
        
        return median
    }
}
