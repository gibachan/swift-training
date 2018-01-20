import Foundation

// -----------------------------------------------------------------------------
// Sort a string array by length
// -----------------------------------------------------------------------------
// Extend collections with a function that returns an array of strings
// sorted by their lengths, longest first.
// -----------------------------------------------------------------------------

extension Collection where Iterator.Element == String {
    func challenge39() -> [String] {
        return self.sorted { (str1, str2) -> Bool in
            return str1.count > str2.count
        }
        
        //        // The above can be shorter
        //        return self.sorted { $0.count > $1.count }
    }
}
