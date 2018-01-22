import Foundation

// -----------------------------------------------------------------------------
// Recreate index(of:)
// -----------------------------------------------------------------------------
// Write an extension for all collections that reimplements the index(of:) method.
// -----------------------------------------------------------------------------

extension Collection where Iterator.Element: Equatable {
    public func challenge42(indexOf: Iterator.Element) -> Int? {
        for (index, value) in self.enumerated() {
            if (value == indexOf) { return index }
        }
        return nil
    }
}
