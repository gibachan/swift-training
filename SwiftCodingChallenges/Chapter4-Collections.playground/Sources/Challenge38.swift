import Foundation

// -----------------------------------------------------------------------------
// Find N smallest
// -----------------------------------------------------------------------------
// Write an extension for all collections that returns the N smallest elements as an array,
// sorted smallest first, where N is an integer parameter.
// -----------------------------------------------------------------------------

extension Collection where Iterator.Element: Comparable {
    func challenge38(count: Int) -> [Iterator.Element] {
        let sorted = self.sorted()
        //        return Array(sorted[0..<count]) // May cause 'Array index is out of range'.
        return Array(sorted.prefix(count))
    }
}
