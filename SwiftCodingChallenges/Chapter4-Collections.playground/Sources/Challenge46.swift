import Foundation

// -----------------------------------------------------------------------------
// Recreate map()
// -----------------------------------------------------------------------------
// Write an extension for all collections that reimplements the map() method.
// -----------------------------------------------------------------------------

extension Collection {
        public func challenge46<T>(_ transform: (Iterator.Element) -> T) -> [T] {
            var result = [T]()
    
            self.forEach { result.append(transform($0)) }
    
            return result
        }
    
    public func challenge46b<T>(_ transform: (Iterator.Element) throws -> T) rethrows -> [T] {
        var returnValue = [T]()
        
        for item in self {
            returnValue.append(try transform(item))
        }
        
        return returnValue
    }
}

