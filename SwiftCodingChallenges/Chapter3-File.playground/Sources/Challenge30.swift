import Foundation

// -----------------------------------------------------------------------------
// New JPEGs
// -----------------------------------------------------------------------------
// Write a function that accepts a path to a directory and returns an array
// of all JPEGs that have been created in the last 48 hours.
// -----------------------------------------------------------------------------

public func challenge30(directory: String) -> [String] {
    var isDirectory = ObjCBool(true)
    let exists = FileManager.default.fileExists(atPath: directory, isDirectory: &isDirectory)
    guard exists && isDirectory.boolValue else { return [] }
    
    let fm = FileManager.default
    let directoryURL = URL(fileURLWithPath: directory)
    
    guard let files = try? fm.contentsOfDirectory(at: directoryURL, includingPropertiesForKeys: nil) else { return [] }
    
    var jpegs = [String]()
    
    for file in files {
        if file.pathExtension == "jpg" || file.pathExtension == "jpeg" {
            guard let attributes = try? fm.attributesOfItem(atPath: file.path) else { continue }
            guard let creationDate = attributes[.creationDate] as? Date else { continue }
            
            if creationDate > Date(timeIntervalSinceNow: -60 * 60 * 45) {
                jpegs.append(file.lastPathComponent)
            }
        }
    }
    
    return jpegs
}
