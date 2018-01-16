import Foundation

// -----------------------------------------------------------------------------
// Find executables
// -----------------------------------------------------------------------------
// Write a function that accepts the name of a directory to scan,
// and returns an array containing the name of any executable files in there.
// -----------------------------------------------------------------------------

public func challenge34(directory: String) -> [String] {
    let fm = FileManager.default
    let directoryURL = URL(fileURLWithPath: directory)
    
    guard let files = try? fm.contentsOfDirectory(at: directoryURL, includingPropertiesForKeys: nil) else { return []}
    
    var returnValue = [String]()
    
    for file in files {
        // Exclude directory which is also considered as excutable
        guard file.hasDirectoryPath == false else { continue }
        
        if fm.isExecutableFile(atPath: file.path) {
            returnValue.append(file.lastPathComponent)
        }
    }
    
    return returnValue
}

