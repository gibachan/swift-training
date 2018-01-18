import Foundation

// -----------------------------------------------------------------------------
// Print error lines
// -----------------------------------------------------------------------------
// Write a function that accepts a path to a log file on disk,
// and returns how many lines start with “[ERROR]”.
// The log file could be as large as 10GB, but may also not exist.
// -----------------------------------------------------------------------------

public func challenge36(path: String) -> Int {
    // This does not work when the file is extremly large
    guard let content = try? String(contentsOfFile: path) else { return 0 }
    
    let lines = content.components(separatedBy: .newlines)
    return lines.filter { $0.range(of: "[ERROR]")?.lowerBound == $0.startIndex }.count
}


class ChunkedFileReader {
    var fileHandle: FileHandle?
    
    // We keep adding to the buffer untile eventually we find a line break
    // or hit the end of the file.
    var buffer: Data
    
    // This should be between 1024 and 8192 for production.
    // It determins how much of the file is read in each step
    let chunkSize: Int = 4
    
    // This determins what we consider to be an end of line
    let delimiter = "\n".data(using: .utf8)!
    
    init(path: String) {
        // Open the file handle and prepare the buffer
        fileHandle = FileHandle(forReadingAtPath: path)
        buffer = Data(capacity: chunkSize)
    }
    
    func readLine() -> String? {
        // Find the delimiter in our buffer
        var rangeOfDelimiter = buffer.range(of: delimiter)
        
        // Loop until we finally find a delimiter
        while rangeOfDelimiter == nil {
            // Try to read a chunk from the file handle,
            // or bail out if it did not work
            guard let chunk = fileHandle?.readData(ofLength: chunkSize) else { return nil }
            if chunk.count == 0 {
                // The chunk was read successfully, but was empty.
                // We reached the end of the file
                if buffer.count > 0 {
                    // The buffer has something left in it.
                    // Send it back, and make sure to clear the buffer's remnants
                    // when it is finished.
                    defer { buffer.count = 0 }
                    return String(data: buffer, encoding: .utf8)
                }
                
                // We reached teh end of the file and the buffer was empty.
                // Send back nil
                return nil
            } else {
                // We read some data.
                // Append it to our buffer
                buffer.append(chunk)
                
                // Now re-scan for the delimiter
                rangeOfDelimiter = buffer.range(of: delimiter)
            }
        }
        
        // We can only make it here if we found a delimiter,
        // but it might be anywhere inside our buffer.
        // We want to pull out everything in our buffer from the start
        // up to where the delimiter lies.
        let rangeOfLine = Range(0 ..< rangeOfDelimiter!.upperBound)
        
        // Convert that range of our buffer into a string
        let line = String(data: buffer.subdata(in: rangeOfLine), encoding: .utf8)
        
        // Then remove it from the buffer
        buffer.removeSubrange(rangeOfLine)
        
        // Send the line back, removing the trailing line break at the end.
        return line?.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}

public func challenge36b(path: String) -> Int {
    var totalErrors = 0
    
    let reader = ChunkedFileReader(path: path)
    while let line = reader.readLine() {
        if line.hasPrefix("[ERROR]") {
            totalErrors += 1
        }
    }
    
    return totalErrors
}
