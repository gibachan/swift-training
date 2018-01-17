import UIKit

// -----------------------------------------------------------------------------
// Convert images
// -----------------------------------------------------------------------------
// Write a function that accepts a path to a directory,
// then converts to PNGs any JPEGs it finds in there, leaving the originals intact.
// If any JPEG can’t be converted the function should just quietly continue.
// -----------------------------------------------------------------------------

public func challenge35(directory: String)  {
    let fm = FileManager.default
    let directoryURL = URL(fileURLWithPath: directory)
    
    guard let files = try? fm.contentsOfDirectory(at: directoryURL, includingPropertiesForKeys: nil) else { return }
    
    for file in files {
        guard file.pathExtension == "jpeg" || file.pathExtension == "jpg" else { continue }
        
        guard let image = UIImage(contentsOfFile: file.path) else { continue }
        guard let png = UIImagePNGRepresentation(image) else { continue }
        
        let newFilename = file.deletingPathExtension().appendingPathExtension("png")
        _ = try? png.write(to: newFilename)
    }
}
