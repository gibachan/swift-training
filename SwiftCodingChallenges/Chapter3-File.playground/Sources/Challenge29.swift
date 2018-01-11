import Foundation

// -----------------------------------------------------------------------------
// Documents directory
// -----------------------------------------------------------------------------
// Write a function that returns a URL to the user’s documents directory.
// -----------------------------------------------------------------------------

public func challenge29() -> String {
    let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
    return paths[0].path
}

