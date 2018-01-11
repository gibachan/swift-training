import Foundation

// -----------------------------------------------------------------------------
// Print last lines
// -----------------------------------------------------------------------------
// Write a function that accepts a filename on disk, then prints its last N lines in reverse order,
// all on a single line separated by commas.
// -----------------------------------------------------------------------------

public func challenge27(filename: String, lineCount: Int) -> String {
    guard let input = try? String(contentsOfFile: filename) else { return "" }

    var result = ""
    var lines = input.components(separatedBy: "\n")
    guard lines.count > 0 else { return "" }
    
    lines.remove(at: lines.endIndex - 1) // To remove last empty line
    
    lines.reverse()
    
    for i in 0 ..< min(lines.count, lineCount) {
        result += "\(lines[i]), "
    }
    result.removeLast(2)

    return result
}
