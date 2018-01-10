import Foundation

// -----------------------------------------------------------------------------
// Print last lines
// -----------------------------------------------------------------------------
// Write a function that accepts a filename on disk, then prints its last N lines in reverse order,
// all on a single line separated by commas.
// -----------------------------------------------------------------------------

public func challenge27(filename: String, lineCount: Int) -> String {
    guard let input = try? String(contentsOfFile: filename) else { return "" }
    print(input)
    var result = ""
    var lines = input.components(separatedBy: "\n")
    guard lines.count > 0 else { return "" }
    
    lines.reverse()
    
    //    result = lines.joined(separator: ",")
    
    for i in 0 ..< min(lines.count, lineCount) {
        result += "\(lines[i])"
    }
    //    result.remove(at: result.startIndex)
    //
    print("result")
    print(result)
    return result
}
