import Foundation

// -----------------------------------------------------------------------------
// Find duplicate filenames
// -----------------------------------------------------------------------------
// Write a function that accepts the name of a directory to scan,
// and returns an array of filenames that appear more than once in that directory
// or any of its subdirectories.
// Your function should scan all subdirectories, including subdirectories of subdirectories.
// -----------------------------------------------------------------------------

public func challenge33(directory: String) -> [String] {
    let fm = FileManager.default
    var result = [String]()
    var filenames = Set<String>()
    var isDirectory = ObjCBool(false)
    
    if let enumerator = fm.enumerator(atPath: directory) {
        while let element = enumerator.nextObject() as? String {
            if fm.fileExists(atPath: "\(directory)/\(element)", isDirectory: &isDirectory) && !isDirectory.boolValue {
                
                if let filename = element.components(separatedBy: ["/"]).last {
                    if filenames.contains(filename) {
                        result.append(filename)
                    } else {
                        filenames.insert(filename)
                    }
                    
                }
                
            }
            
        }
        
    }
    
    return result
}

public func challenge33b(directory: String) -> [String] {
    let fm = FileManager.default
    let directoryURL = URL(fileURLWithPath: directory)
    
    guard let files = fm.enumerator(at: directoryURL, includingPropertiesForKeys: nil) else { return [] }
    var duplicates = Set<String>()
    var seen = Set<String>()
    
    for case let file as URL in files {
        guard file.hasDirectoryPath == false else { continue }
        
        let filename = file.lastPathComponent
        if seen.contains(filename) {
            duplicates.insert(filename)
        }
        seen.insert(filename)
    }
    return Array(duplicates)
}
